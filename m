Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72C158BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 12:57:51 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 10FB018F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 12:57:50 +0000 (UTC)
Date: Tue, 4 Aug 2015 15:55:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20150804125556.GA5180@mwanda>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org> <1624703.qdGzscHWSc@avalon>
	<alpine.DEB.2.02.1508011319140.2071@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1508011319140.2071@localhost6.localdomain6>
Cc: Shuah Khan <shuah.kh@samsung.com>, Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Christoph Hellwig <hch@infradead.org>, Tejun Heo <tj@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 01, 2015 at 01:21:09PM +0200, Julia Lawall wrote:
> Currently, is there any documentation about when these functions can be
> used?  All I remember seeing is a discussion of what the functions do and
> what functions are available.  But nothing about when they should and
> should not be used.
> 

The documentation for devm_kmalloc() doesn't list common pitfalls.  The
other big one which should be obvious, but happens often is freeing
devm_ memory with kfree().

/**
 * devm_kmalloc - Resource-managed kmalloc
 * @dev: Device to allocate memory for
 * @size: Allocation size
 * @gfp: Allocation gfp flags
 *
 * Managed kmalloc.  Memory allocated with this function is
 * automatically freed on driver detach.  Like all other devres
 * resources, guaranteed alignment is unsigned long long.
 *
 * RETURNS:
 * Pointer to allocated memory on success, NULL on failure.
 */

Another thing which I have seems fairly common is treating it like
kmalloc() and calling devm_kfree() manually.  For example, ssp_parse_dt()

drivers/iio/common/ssp_sensors/ssp_dev.c
   493          return data;
   494  
   495  err_mcu_reset_gpio:
   496          devm_gpio_free(dev, data->mcu_reset_gpio);
   497  err_ap_mcu:
   498          devm_gpio_free(dev, data->ap_mcu_gpio);
   499  err_free_pd:
   500          devm_kfree(dev, data);
   501          return NULL;
   502  }

regards,
dan carpenter
