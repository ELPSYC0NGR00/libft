/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fde-simo <fde-simo@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/26 15:37:31 by fde-simo          #+#    #+#             */
/*   Updated: 2024/10/26 16:28:49 by fde-simo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *ptr, int c, size_t n)
{
	unsigned char	*p;
	int				i;

	i = 0;
	p = (unsigned char *)ptr;
	while (n > 0)
	{
		p[i] = (unsigned char)c;
		++i;
		--n;
	}
	return (ptr);
}
