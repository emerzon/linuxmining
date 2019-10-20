#!/usr/bin/env bash
# Simple script to start/stop cpuminer according to the Magicoin block value
# Requires a running magid (wallet daemon)
# Emerson Gomes (emerson.gomes@gmail.com)

# Config ---------------------------------------------------------------------------------------------------------------
mining_threshold=5
switch_after_good_blocks=1
switch_after_bad_blocks=5
check_interval=20
# ---------------------------------------------------------------------------------------------------------------------

mining_status=false
good_block_count=0
bad_block_count=0


d_start_miner() {
  echo "start_miner"
  screen -S cpu2 -X quit
  ./cpu_m7m_cpuminer.sh
  mining_status=true
}

d_stop_miner() {
  echo "stop_miner"
  screen -S cpu -X quit
  ./cpu_cpupower_cpuminer.sh
  mining_status=false
}

d_stop_miner

while true; do
  current_value=$(curl -s https://chita.com.br/magi.txt | cut -f 1 -d \.)
  echo -ne "$(date +"%H:%M:%S") - Current value: ${current_value}"
  if [[ ${current_value} -ge ${mining_threshold} ]]; then
    (( good_block_count += 1 ))
    bad_block_count=0
    echo " - Good block found (${good_block_count}/${switch_after_good_blocks})"
  else
    (( bad_block_count += 1 ))
    good_block_count=0
    echo " - Bad block found (${bad_block_count}/${switch_after_bad_blocks})"
  fi

  if [ ${good_block_count} -ge ${switch_after_good_blocks} ]; then
    ${mining_status} || d_start_miner
  elif [ ${bad_block_count} -ge ${switch_after_bad_blocks} ]; then
    ${mining_status} && d_stop_miner
  fi

sleep ${check_interval}

done



