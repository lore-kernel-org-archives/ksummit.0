Return-Path: <SRS0=CRNu=XI=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9FEC49ED7
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 16:34:50 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 695A620693
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 16:34:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="FBAwbrSu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 695A620693
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 22939CD3;
	Fri, 13 Sep 2019 16:34:50 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2BAD63EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 16:34:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7C028A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 16:34:47 +0000 (UTC)
Received: from pendragon.ideasonboard.com (unknown
	[IPv6:2001:8a0:6be4:9301:a728:6099:33:a27c])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id AAB08325;
	Fri, 13 Sep 2019 18:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1568392485;
	bh=K8gOQxOcWJu3IyXo8VIA5Fl4toULtVUKNL9ZTJL5US0=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=FBAwbrSurlPI5IpkArDcRclCpyVKqAIYvGeoabGZ8ZOMJ1eZpB/oXToJEm098u/ES
	BJ/aDUdYkRNc0TXZKppkho8ZqjfyMenQ64Qln5eArlmIUc7UDfTDpLe9CsNFHO0OOz
	hrENweUJ0Z1yzi+stj83s7GU20qx/mzm0TJUgrF4=
Date: Fri, 13 Sep 2019 19:34:37 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190913163437.GA17711@pendragon.ideasonboard.com>
References: <20190911150804.GA10046@mit.edu>
	<20190912120602.GC29277@pure.paranoia.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912120602.GC29277@pure.paranoia.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Reflections on kernel
 development processes
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Hi Konstantin,

On Thu, Sep 12, 2019 at 08:06:02AM -0400, Konstantin Ryabitsev wrote:
> On Wed, Sep 11, 2019 at 11:08:04AM -0400, Theodore Y. Ts'o wrote:
> > Hi all,
> > 
> > Many of you attended Dmitry Vyukov's talk at the Kernel Summit track
> > today, "Reflections on Kernel Development Process, Quality, and
> > Testing".  (For those of you who haven't, the slides are available
> > here[1].)
> > 
> > [1] https://linuxplumbersconf.org/event/4/contributions/554/attachments/353/584/Reflections__Kernel_Summit_2019.pdf
> > 
> > Greg K-H has suggested, and I strongly agree, that it would be
> > worthwhile to add this to the agenda of the Maintainer's Summit.  In
> > particular, what next steps should we take and what should be the
> > criteria and the process for trying to further standardize our tools
> > and processes in order to make make our development processes more
> > mature and to improve developer productivity and happiness.
> > 
> > If you didn't attend the talk, I encourage you to take a look at the
> > slide, so we don't have to spend time trying to bring people up to
> > speed on the discussion to date.  My plan is to schedule this as our
> > first topic tomorrow afternoon.
> 
> To follow-up, this is a very rough outline of a proposal that I am going
> to submit to the Foundation in hopes to fund maintainer tool
> development. It follows along some of the lines highlighted in Dmitry's
> talk.
> 
> --------
> 
> # Stage 1 (Normal brain): "local patchwork"
> 
> - Implement a mutt-like tool ("putt"?) that uses locally cloned
>   public-inbox archives to track patches/series submitted to mailing
>   lists
>     - Pre-filters by keywords and paths in patches
>     - Tracks and automatically inserts taglines
>       (Reviewed-by, Acked-by, Tested-by)
>     - Can ignore a patch/series until it sees certain taglines
>       (Tested-by: zeroday bot, Reviewed-by: Trusty Intern)
>     - Automatically tracks latest series and offers an interdiff view
>       between series revisions ("show me what changed between v1 and v2")
>     - Allows responding to patches and conversations a-la mutt
>     - Allows applying patches/series to local repos

Do you plan for this tool to support shallow clones ? Some mailing lists
have really high traffic an have been around for years, one may not want
to clone a full public-inbox archives when interested in patches
submitted for the last N months only.

> # Stage 2 (Enlightened brain): "now with CI and workflows"
> 
> - Add configurable workflow functionality allowing maintainers to run
>   local or remote tasks on patches and series, before maintainer sees
>   the patches, e.g.:
>     - Create a branch and attempt to apply series
>     - If succeeds, run a batch of CI tests
>     - If succeeds, mark as "CI passed" and show the maintainer
>     - If fails, reject automatically using a "sorry, tests failed"
>       template, including relevant error messages
> 
> - All of the above runs outside of the UI tool ("putt-cid"?) and defines CI
>   routines that can run in cloudy environments or locally using
>   containers.
> - Putt communicates with putt-cid locally or remotely to identify
>   patches/series that the maintainer should review
> 
> 
> # Stage 3 (Galaxy brain): "email as a secondary channel"
> 
> - Support additional distributed communication mechanisms in conjunction
>   with existing mailing lists.
>   - SSB is a peer-to-peer replication framework that has built-in
>     cryptographic integrity and attestation ("immutable git-like
>     chains per participating developer")
>     - offers native support for structured data like bug reports, CI
>       results, code review comments, etc.
>     - can easily support email-to-SSB and web-to-SSB bridges, so
>       developers can choose to participate using familiar tools
>     - has known limitations in v1 of the protocol, but v2 is being
>       actively developed to address them.
>     - or we can take it as a base and develop an SSB-like protocol that
>       better suits distributed development needs.
> 
>   - Radicle is another interesting alternative that creates a mechanism
>     for automating some maintainer tasks by defining "state machines,"
>     e.g.:
>     - automatically merge a revision if all tests pass and at least 2
>       Reviewed-by's are seen.
>     - May have been sipping the blockchain cool-aid a bit too much
>       ("Immutable append-only records").

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
