Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0D54C9DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 16:30:27 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[212.209.106.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 176AD2034E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 16:30:25 +0000 (UTC)
Message-ID: <53ECE41B.6000707@sonymobile.com>
Date: Thu, 14 Aug 2014 09:30:19 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: "josh@joshtriplett.org" <josh@joshtriplett.org>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813191907.GA14165@cloud>
In-Reply-To: <20140813191907.GA14165@cloud>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
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



On 08/13/2014 12:19 PM, josh@joshtriplett.org wrote:
> On Wed, Aug 13, 2014 at 07:29:21PM +0200, Bird, Tim wrote:
>> I'd like to raise an issue, ahead of the kernel summit, on the topic of reducing
>> kernel config options. (Or, at least, reducing the combinatorial explosion effect
>> for config options).
>>
>> Earlier this year when some patches were submitted to make the network
>> stack more configurable, there was some pushback, due (in part) to the
>> introduction of more kernel config options.
>> See http://thread.gmane.org/gmane.linux.kernel/1696910
>> I think it is reasonable to be concerned over the testability of myriad config
>> options.
>>
>> In the past, there have been efforts to curb the number of kernel config
>> options, but since we now stand at about 15,000 options throughout the
>> kernel, this seems like a battle we've mostly given up on.
>
> It'd be interesting to know how many of those options control the
> building of individual drivers or entire subsystems, and how many
> change kernel features in a non-trivial way.  I suspect that the latter
> set grows much more slowly, and that latter set seems like the one we
> care about limiting.
>
>> I propose that we remove or hide a lot of the configuration options related
>> to size, and instead focus on size profiles. When someone wants to build a
>> minimal Linux system, they don't really want to manually trim down every
>> Linux sub-system.  The more common development case is that they want
>> a fully minimal Linux system, except for one or two areas where they want
>> some flexibility in features.  I propose that we tie most of the options that
>> are currently in the kernel for size reasons to a single or a few meta-options:
>> e.g. CONFIG_SMALL, CONFIG_TINY, CONFIG_RIDICULOUS.  These
>> different meta-config options can get better testing, and this will help curb
>> the proliferation of size-related config options (and the resulting test
>> combination explosion for those individual options.)
>>
>> Note that this would be for sub-system related (feature or size) config options,
>> and not driver-related config options.  Obviously, you have to have drivers
>> for the hardware you plan to run on.
>>
>> Optimally it would be nice to have the ability to configure a small system, and
>> then "back off" of the tiny config in a particular area (say networking).
>> I believe this would yield a much more tractable system for building small
>> systems with Linux, than the current situation.
>>
>> I'd like to discuss implementation ideas for this in the hallway track at KS.
>
> I'm interested in this as well, and I planned to raise the issue of
> configuration options as part of the tinification discussion.
>
> Size-constrained systems seem likely to start from the tiniest possible
> configuration, and incrementally add specific features they need.  Given
> that, I do think we want the options for individual subsystems to look a
> lot less combinatorial and a lot closer to linear.  Several subsystems
> could likely use a major pruning of options.
>
> However, I don't think a global set of meta-options or profiles
> necessarily makes sense; either we'll end up with a large number of
> meta-configurations, or we'll end up with "sample" configurations that
> few can use unmodified.  We already have CONFIG_EMBEDDED for options
> that only exist for size purposes.

If we end up with a large number of meta-configuration options, that 
would be a failure.  In embedded, especially when fine-tuning for size,
there will likely be a need to modify the config slightly, but having
a starting point at the low end would be good.

>
> Can you elaborate a bit on the idea of "backing off" of the tiny
> configuration, and how that could work in practice?  I don't see an
> obvious way to do that with today's Kconfig; what kinds of configuration
> enhancements do you have in mind?
Well, my ideas are not well-formed yet, but I envision something where
there's a global CONFIG_TINY flag, that causes size-related options
across all sub-systems to be configured to their "small" setting.
Then, I would like to see per-sub-system options to enable configuration 
of individual options for that sub-system.  So something
like CONFIG_NET_TINY_CONFIGURABLE (name to be improved), that when
set in combination with CONFIG_TINY, still allows individual 
configuration options for networking.  Developers would need to
realize that they are re-opening the combinatorial box when they
do this.  (Note that the network maintainers might still want to limit
the configurability in their sub-system, due to e.g. readability, 
maintenance and network compatibility issues).

The idea would be that when CONFIG_TINY is not set, the options for
configuring individual bits of networking would not be visible
in 'make menuconfig' (or to automated test tools), but when
CONFIG_TINY and CONFIG_NET_TINY_CONFIGURABLE are set, they would be.

  -- Tim
