Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0DEA4AEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 20:31:17 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3F952025C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 20:31:15 +0000 (UTC)
Date: Thu, 22 May 2014 23:31:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20140522203103.GM15585@mwanda>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
	<2980546.hqgiQV7seV@vostro.rjw.lan>
	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>
	<20140522154859.GA28971@thunk.org>
	<CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 22, 2014 at 09:31:44AM -0700, Dan Williams wrote:
> I agree that something like this is prickly once it gets entangled
> with ABI concerns.  But, I disagree with the speed argument... unless
> you believe -staging has not increased the velocity of kernel
> development?

Staging is good because it brings more developers, but in many cases it
is a slow down.  Merged codes has stricter rules where you have to write
reviewable patches.  If there is a bug early in a patch series then you
can't just fix it in a later patch, you need to redo the whole series.
Porting a wifi driver to a different wireless stack is
difficult/impossible when you have to write bisectable code.

I often think that developers would be better off just working like mad
to fix things up outside the tree.

The good thing about staging is that before there were all these drivers
out there which people were using but they were never going to be merged
in the kernel.  Now we merge them and try to clean them up so it is a
step in the right direction.

regards,
dan carpenter
