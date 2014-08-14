Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 812A9910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 16:11:43 +0000 (UTC)
Received: from qmta11.emeryville.ca.mail.comcast.net
	(qmta11.emeryville.ca.mail.comcast.net [76.96.27.211])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1F0CA20320
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 16:11:43 +0000 (UTC)
Date: Thu, 14 Aug 2014 11:03:34 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: "Bird, Tim" <Tim.Bird@sonymobile.com>
In-Reply-To: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
Message-ID: <alpine.DEB.2.11.1408141101070.26361@gentwo.org>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] RFC: Kernel tinification - kernel config
 reduction
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 13 Aug 2014, Bird, Tim wrote:

> I propose that we remove or hide a lot of the configuration options related
> to size, and instead focus on size profiles. When someone wants to build a
> minimal Linux system, they don't really want to manually trim down every
> Linux sub-system.  The more common development case is that they want

Yes exactly.

> a fully minimal Linux system, except for one or two areas where they want
> some flexibility in features.  I propose that we tie most of the options that
> are currently in the kernel for size reasons to a single or a few meta-options:
> e.g. CONFIG_SMALL, CONFIG_TINY, CONFIG_RIDICULOUS.  These
> different meta-config options can get better testing, and this will help curb
> the proliferation of size-related config options (and the resulting test
> combination explosion for those individual options.)

I'd be interested to configure minimally sized systems in order to
increase performance. The cache footprint determines performance these
days so a tinyfication project will have performance implications as well
and has the potential to significantly speed up key kernel functionality.

> Optimally it would be nice to have the ability to configure a small system, and
> then "back off" of the tiny config in a particular area (say networking).
> I believe this would yield a much more tractable system for building small
> systems with Linux, than the current situation.

That could be useful also to come up with high performant kernels for
special functionality. Come up with a tiny config and then add config
options to enable only what is needed.

Reminds me of what Gentoo is doing

> I'd like to discuss implementation ideas for this in the hallway track at KS.
>
> Thoughts?

Get a room instead of the hallway?
