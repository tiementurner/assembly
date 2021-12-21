; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strlen.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: tblanker <tblanker@student.codam.nl>         +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/10/25 13:29:50 by tblanker      #+#    #+#                  ;
;    Updated: 2020/10/25 13:53:56 by tblanker      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

			global	_ft_strlen
			section	.text
_ft_strlen:
			xor		rax, rax
_looplen:
			inc		rax
			cmp		[rdi + rax - 1], BYTE 0
			jne		_looplen
			dec		rax
			ret
