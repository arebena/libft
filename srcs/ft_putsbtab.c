/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putsbtab.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: arebena <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/28 20:58:35 by arebena           #+#    #+#             */
/*   Updated: 2016/09/21 19:16:13 by arebena          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putsbtab(char **tab)
{
	int i;

	i = -1;
	ft_putstr("Tab_print\n");
	if (tab)
		while (tab[++i])
		{
			ft_putchar('[');
			ft_putnbr(i);
			ft_putchar(']');
			ft_putstr(tab[i]);
			ft_putchar('\n');
		}
}
