Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C536D37
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 08:32:48 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AAFE98B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 08:32:47 +0000 (UTC)
Date: Wed, 5 Sep 2018 10:32:45 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Jan Kara <jack@suse.cz>
In-Reply-To: <20180905081658.GB24902@quack2.suse.cz>
Message-ID: <nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018, Jan Kara wrote:

> So I agree that with current amount of patches in stable tree, the 
> review is cursory at best. However that does not really seem to be 
> related to the frequency of stable releases (which is what I believe 
> Laura complains about in this thread) but rather to the amount of 
> patches going into stable.

I think the psychological aspect shouldn't be ignored in this particular 
case.

Maintainers and patch authors being constantly flooded by stable queues 
would never really get back to reviewing it, as it's always there, more is 
already in flight, and the previous pile is still unreviewed.

If it comes at regular pace though, it's a bit easier to align with it and 
establish for example "friday afternoon stable review 2 hours" into 
maintainer's workflow :)

But yeah, it's weak and doesn't solve the primary thing, which is just the 
size of stable itself.

-- 
Jiri Kosina
SUSE Labs
