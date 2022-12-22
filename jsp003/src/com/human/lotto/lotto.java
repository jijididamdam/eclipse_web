package com.human.lotto;

public class lotto {
	int rd[] = new int[6];
	
	   public int[] rdrd() {
		      for (int i = 0; i < 6; i++)
		      {
		         rd[i] = (int)(Math.random() * 45) + 1; // 정수 생성
		         for (int j = 0; j < i; j++) {
		            if (rd[j] == rd[i]) {
		               i--;
		            }
		         }
		      }
		      return rd;
		   }
	
}
