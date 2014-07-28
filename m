Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BF65A7AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 28 Jul 2014 22:53:49 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6CC732003D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 28 Jul 2014 22:53:49 +0000 (UTC)
Message-ID: <53D6D44E.1070708@zytor.com>
Date: Mon, 28 Jul 2014 15:53:02 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Julia Lawall <julia.lawall@lip6.fr>
References: <22709.1406291979@warthog.procyon.org.uk>
	<20140725232429.GD19618@jtriplet-mobl1>
	<53D69BEC.3030509@zytor.com>
	<alpine.DEB.2.02.1407282214460.2074@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1407282214460.2074@localhost6.localdomain6>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Should we force include <linux/err.h> when
 compiling all .c files?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/28/2014 01:16 PM, Julia Lawall wrote:
>>
>> We have such a clear procedure.  It involves pre-arranging with Linus
>> *before the merge window begins* to run the script in question
>> *immediately before releasing rc1*.
> 
> In this case, would it really create many conflicts?  Does the list of 
> included files change often.
> 
> If there is an optimial position for the include, it could be hard to make 
> a perfect script.
> 

In this case it probably doesn't matter much, because there is a key
difference between this and most other patchsets of this type: there is
an order that this can be done which is safe.  Specifically, add the
#include where it needs to go as a patch series, and then remove it from
the build.  If this is merged into a git tree and the resulting build
fails, it will be obvious what needs to happen, and sfr and Linus are
really good about managing that in linux-next and mainline,
respectively, so I don't even think we need to go to this "special
procedure" for this case.

	-hpa
