Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E8AB910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 18:54:32 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E0482203A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 18:54:31 +0000 (UTC)
Date: Thu, 14 Aug 2014 20:54:27 +0200
From: Jan Kara <jack@suse.cz>
To: "Bird, Tim" <Tim.Bird@sonymobile.com>
Message-ID: <20140814185427.GB18743@quack.suse.cz>
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

On Wed 13-08-14 19:29:21, Bird, Tim wrote:
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
  This somewhat reminds me a problem of selecting packages when
installing a distro. There you can select different "patterns", where each
pattern selects a set of packages. Then you can go and enable / disable
individual packages if you care about fine-tuning the configuration. The
patterns are like "Minimal system", "Minimal X System", "KDE Desktop",
"Office suite", ... I think we could use a similar system for Kconfig.


								Honza
-- 
Jan Kara <jack@suse.cz>
SUSE Labs, CR
