Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D1C1FACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 16:57:51 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0176.hostedemail.com
	[216.40.44.176])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 523991DABB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 16:57:51 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 77EAA180039FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 16:57:31 +0000 (UTC)
Message-ID: <1507654645.3552.37.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Mark Rutland <mark.rutland@arm.com>
Date: Tue, 10 Oct 2017 09:57:25 -0700
In-Reply-To: <20171010164139.GN27659@leverpostej>
References: <1507573730-8083-1-git-send-email-mark.rutland@arm.com>
	<1507573730-8083-14-git-send-email-mark.rutland@arm.com>
	<20171009195112.GL3521@linux.vnet.ibm.com>
	<20171010095413.GE27659@leverpostej>
	<20171010124712.GV3521@linux.vnet.ibm.com>
	<20171010125039.GI27659@leverpostej>
	<20171010145252.GX3521@linux.vnet.ibm.com>
	<1507652874.3552.34.camel@perches.com>
	<20171010164139.GN27659@leverpostej>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: linux-kernel@vger.kernel.org,
	ksummit-discuss <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 13/13] rcutorture: formal: prepare for
 ACCESS_ONCE() removal
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2017-10-10 at 17:41 +0100, Mark Rutland wrote:
> On Tue, Oct 10, 2017 at 09:27:54AM -0700, Joe Perches wrote:
> > Once ACCESS_ONCE is removed from the code in the tree
> > it can also be removed from checkpatch
> 
> Sure thing. We're expecting to rip that out with the ACCESS_ONCE
> definitions in a post-Coccinelle patch.

This treewide series is one of the types that would be nice to
have done at -rc1 via some external automated script service.
