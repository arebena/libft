/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putfstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: arebena <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/10 18:31:29 by arebena           #+#    #+#             */
/*   Updated: 2014/12/10 18:35:33 by arebena          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putfstr(char const *s)
{
	int i;

	i = -1;
	if (s == NULL)
		return ;
	while (s[++i])
		write(1, &(s[i]), 1);
	free((char *)s);
	return ;
}
