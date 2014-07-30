Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F358A53
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 30 Jul 2014 14:31:01 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B261A2019C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 30 Jul 2014 14:31:00 +0000 (UTC)
Message-ID: <53D90199.2020108@zytor.com>
Date: Wed, 30 Jul 2014 07:30:49 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Josh Triplett <josh@joshtriplett.org>
References: <22709.1406291979@warthog.procyon.org.uk>
	<20140725232429.GD19618@jtriplet-mobl1>
	<53D69BEC.3030509@zytor.com> <20140729142439.GA1437@jtriplet-mobl1>
In-Reply-To: <20140729142439.GA1437@jtriplet-mobl1>
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

On 07/29/2014 07:24 AM, Josh Triplett wrote:
>>
>> We have such a clear procedure.  It involves pre-arranging with Linus
>> *before the merge window begins* to run the script in question
>> *immediately before releasing rc1*.
> 
> That sounds sensible.  Is that documented anywhere?
> 

In the brains of a bunch of kernel developers.  This isn't a common
enough of a thing.

However, this is an exceptional procedure, and as I mentioned it isn't
even necessary in this case.

	-hpa
