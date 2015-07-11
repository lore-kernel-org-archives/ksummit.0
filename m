Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 90D04B8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 20:49:18 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0014.hostedemail.com
	[216.40.44.14])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C5FE5112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 20:49:17 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id F3691B29E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 13:42:14 +0000 (UTC)
Message-ID: <1436622131.2711.55.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Sat, 11 Jul 2015 06:42:11 -0700
In-Reply-To: <20150711085119.2f03e6ae@grimm.local.home>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710114409.638582c0@gandalf.local.home>
	<20150711093126.GH4289@mwanda> <20150711113447.GA3508@osiris>
	<20150711085119.2f03e6ae@grimm.local.home>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] checkpatch.pl stuff...
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2015-07-11 at 08:51 -0400, Steven Rostedt wrote:
> On Sat, 11 Jul 2015 13:34:47 +0200
> Heiko Carstens <heiko.carstens@de.ibm.com> wrote:
> 
> > The 80 character limit warning is the only thing I really dislike about
> > checkpatch. I've seen so many patches with insane ;) line breaks just to
> > satisfy this rule.
> > Unfortunately even experienced developers think this is a hard limit.
> > Argueing that checkpatch just gives you a hint that something _could_ be
> > improved are most of the time pointless. "But checkpatch says... therefore
> > it has be to like that." ;)
> > 
> > Besides that it I think it works just fine.
> 
> I'll admit, as Dan said, that my patches are somewhat "special". But
> what I really hate, is that argument I have had with people where I
> comment on a patch, and they argue the "but checkpatch says". Yeah,
> that can get annoying.

It can and does.  Especially the "long_lines" message.

It'd be good if somehow checkpatch output could be
viewed more as lighthearted suggestions rather than
iron-clad rules.

Maybe changing the "WARNING" type messages to a new
"SUGGESTION" might be better to let people know that
it's OK to ignore some rules.

Maybe reclassifying some ERROR type messages to
WARNING/SUGGESTION might help.

I'd like to see checkpatch used quite a bit less on
files and perhaps a bit more on actual patches.

I've suggested a few things.

https://lkml.org/lkml/2015/2/11/433

o Only allow checkpatch to be used with the -f/--file
  option for drivers/staging/
o Add an undocumented --force command line option
o Make --strict the default for drivers/staging

I think these checkpatch style-based --type=<foo>
white-space rules are generally reasonable and should
nearly always be followed for basic kernel style
conformance:

o spacing
o space_before_tab
o pointer_location
o trailing_whitespace
o bracket_space
o leading_space

The brace line position rules are generally reasonable:

o open_brace
o braces
o else_after_brace
o while_after_brace

The vertical line rules like "blank line after
declarations" and "consecutive blank lines" are
likely reasonable but may be dubious.

o line_spacing

There are some additional rules active only when
the --strict option is used that some like

o spacing 
  (space after a cast)
  (spaces around operators and arithmetic)
o line spacing
  (blank line after function/struct/union/enum)

These style-based rules are perhaps a bit dubious:

o long_line
o logical_continuations
o parenthesis_alignment

This one I think senseless (minimum 4 line), but
there is an override capability:

o config_description
