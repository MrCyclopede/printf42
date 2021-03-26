/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rcourtoi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/09 17:41:30 by rcourtoi          #+#    #+#             */
/*   Updated: 2018/11/18 11:41:06 by rcourtoi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	size_t x;

	x = 0;
	while (x < n)
	{
		((unsigned char *)dst)[x] = ((const unsigned char *)src)[x];
		x++;
	}
	return (dst);
}
