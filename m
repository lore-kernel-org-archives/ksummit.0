Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9ABC45DA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 15:06:11 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7EEB584F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 15:06:11 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
To: Shuah Khan <skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <20262.1561993564.1@warthog.procyon.org.uk>
Date: Mon, 01 Jul 2019 16:06:04 +0100
Message-ID: <20263.1561993564@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
	commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Shuah Khan <skhan@linuxfoundation.org> wrote:

> In a recent patch discussion, I learned that some maintainers would like
> to see patch version changes in the commit log.
> 
> I went looking in the git log and found a handful of recent commits with
> "Changes since" type information in the commit logs. It appears to be
> maintainer preference and a recent trend.
> 
> I see the value in including the information. It can be informative
> and valuable for future work in the area.
> 
> Is this something that we would like to see in all commits going forward? If
> so, updating submitting patch documentation and making
> sure the version information evolves from "informal" to more formal
> nature that fits in with the commit logs would be helpful.
> 
> Making sure it doesn't get out of hand and commit logs don't
> become too long to be useful would also be helpful.

I put the changelog in the cover note (ie. patch 0) since if there's more than
one patch there may well be changes that span multiple patches.  Whoever's
doing the merge could include this in the merge description.

David
