Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D8CAD9CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 18:07:47 +0000 (UTC)
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 641922035A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 18:07:47 +0000 (UTC)
Received: by mail-pa0-f45.google.com with SMTP id eu11so122131pac.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 11:07:47 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 13 Aug 2014 11:07:43 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: "Bird, Tim" <Tim.Bird@sonymobile.com>
Message-ID: <20140813180743.GB16662@roeck-us.net>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
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

On Wed, Aug 13, 2014 at 07:29:21PM +0200, Bird, Tim wrote:
> I'd like to raise an issue, ahead of the kernel summit, on the topic of reducing
> kernel config options. (Or, at least, reducing the combinatorial explosion effect
> for config options).
> 
> Earlier this year when some patches were submitted to make the network
> stack more configurable, there was some pushback, due (in part) to the
> introduction of more kernel config options.
> See http://thread.gmane.org/gmane.linux.kernel/1696910
> I think it is reasonable to be concerned over the testability of myriad config
> options.
> 
> In the past, there have been efforts to curb the number of kernel config
> options, but since we now stand at about 15,000 options throughout the
> kernel, this seems like a battle we've mostly given up on.
> 
> I propose that we remove or hide a lot of the configuration options related
> to size, and instead focus on size profiles. When someone wants to build a
> minimal Linux system, they don't really want to manually trim down every
> Linux sub-system.  The more common development case is that they want
> a fully minimal Linux system, except for one or two areas where they want
> some flexibility in features.  I propose that we tie most of the options that
> are currently in the kernel for size reasons to a single or a few meta-options:
> e.g. CONFIG_SMALL, CONFIG_TINY, CONFIG_RIDICULOUS.  These
> different meta-config options can get better testing, and this will help curb
> the proliferation of size-related config options (and the resulting test
> combination explosion for those individual options.)
> 
> Note that this would be for sub-system related (feature or size) config options,
> and not driver-related config options.  Obviously, you have to have drivers
> for the hardware you plan to run on.
> 
> Optimally it would be nice to have the ability to configure a small system, and
> then "back off" of the tiny config in a particular area (say networking).
> I believe this would yield a much more tractable system for building small
> systems with Linux, than the current situation.
> 
> I'd like to discuss implementation ideas for this in the hallway track at KS.
> 
My scope, which is more focused on testing, is a bit different.

Major problem I see is that many architecture maintainers don't seem to care
about "make allmodconfig" and/or "make allyesconfig", meaning there is no
simple means to at least compile-test all code that _can_ be enabled for
a given architecture. And don't even mention "make randconfig".

Instead of CONFIG_TINY or similar, I would find it more important to get
allmodconfig and/or allyesconfig to work for as many architectures as
possible, and to create some means to help catching errors of the
kind detected by randconfig, only in a more deterministic way.

Guenter
