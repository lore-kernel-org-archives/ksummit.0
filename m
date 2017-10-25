Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CCA5FBE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 09:53:55 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 480AA1AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 09:53:55 +0000 (UTC)
Date: Wed, 25 Oct 2017 11:54:03 +0200
From: Greg KH <greg@kroah.com>
To: Bart Van Assche <Bart.VanAssche@wdc.com>
Message-ID: <20171025095403.GA19080@kroah.com>
References: <1508924843.4165.6.camel@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1508924843.4165.6.camel@wdc.com>
Cc: "leonro@mellanox.com" <leonro@mellanox.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] How to encourage driver authors
 to annotate integer endianness properly
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 25, 2017 at 09:47:25AM +0000, Bart Van Assche wrote:
> Hello Ted,
> 
> As you most likely know endianness annotations like __be32 can be verified
> by the static source code analyzer called sparse. These annotations are a
> big help to verify whether endianness conversions in drivers are correct
> (e.g. be32_to_cpu()). However, many driver authors either are not familiar
> with sparse or do not use it to verify their work. I think we need a way
> to encourage driver authors to pay attention to endianness annotations,
> e.g. by letting the zero-day kernel test infrastructure verify endianness
> annotations. Please consider to add this topic to the kernel summit agenda. 

Driver subsystem maintainers should know this, and sparse reports should
be simple to run and notice these issues.  If you know of a subsystem
that is not paying attention to this, please let those maintainers know
and send patches to resolve the issues :)

thanks,

greg k-h
