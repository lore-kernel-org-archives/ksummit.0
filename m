Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B41EAAF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 10:09:21 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [58.251.152.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A91E5173
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 10:09:20 +0000 (UTC)
Message-ID: <55A4DFB8.4050901@huawei.com>
Date: Tue, 14 Jul 2015 18:08:56 +0800
From: Zefan Li <lizefan@huawei.com>
MIME-Version: 1.0
To: Sasha Levin <sasha.levin@oracle.com>
References: <55A1407E.5080800@oracle.com> <55A38FD6.2070103@huawei.com>
	<55A3E383.6070107@oracle.com>
In-Reply-To: <55A3E383.6070107@oracle.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> So this is an interesting subject: right now we have a few stable/LTS trees and each
> of us does his own thing (while following a common pattern and discussing things),
> including picking patches on his own, sending mails for added/review/released and
> dealing with testing/backports (we may share testing resources and look for backports
> in other trees, but it's up to each of us individually to get it right).
> 
> What if instead of keeping things separated, we try combining our efforts and work
> on a single tree? It would mean that people would only get one mail when their patch
> was added, reviewed and released, making it easier to follow discussions and manage
> patches.
> 
> You don't send out mails when things failed to apply on 3.4 because it's common, and
> we don't want to flood everyone with this, but what if authors would only get one mail
> stating which versions the patch applied successfully to and which it didn't, making the
> review process easier?
> 
> It would also mean that if I, for example, look at a patch and mark is as not-relevant
> for 3.18, you wouldn't be looking at it again to decide if it applies to 3.4, saving
> everyone lots of work.
> 

I agree it will save us a lot of work if we work together, and that will better ensure
a fix won't be missing from some stable trees.

It helps more for maintainers who work on stable tress that are very close in version.
Take Ben and I as an example, if I already manually backport a commit to 3.4.y, Ben will
get notified. Now Ben can just pick it for 3.2.y, and it probably can be applied cleanly,
thus save his time.

Maybe there should be a workshop during KS for stable tree maintainers to get together
and discuss how to work on how to share each other's work.

Another related issue is we all have our own scripts. If we share a set of common scripts,
then we can benefit from each other's improvements on those scripts. Ben once brought this
up in stable mailing list:

http://www.spinics.net/lists/stable/msg89430.html
