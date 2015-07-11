Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84D9FAE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 09:32:22 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6EC50E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 09:32:21 +0000 (UTC)
Date: Sat, 11 Jul 2015 12:31:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150711093126.GH4289@mwanda>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710114409.638582c0@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710114409.638582c0@gandalf.local.home>
Cc: Joe Perches <joe@perches.com>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] checkpatch.pl stuff...
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 11:44:09AM -0400, Steven Rostedt wrote:
> Ug, don't emphasize checkpatch. I see people making patches uglier due
> to it. I have an old version of checkpatch that I sometimes run, but
> the new version, IMHO, has more noise than signal.

I have seen people do some very ugly things to satisfy the 80 character
limit.  Recently someone sent a patch to make a config description long
enough for checkpatch and
the they did it
by adding by adding
lots and lots of
newlines like this.  :)

Anyway, I ran checkpatch.pl on your last 500 patches to see what you
were complaining about specifically.

    230 WARNING: please, no spaces at the start of a line

Checkpatch doesn't handle perl well.

    207 WARNING: line over 80 characters

These are over reported because of a bug in checkpatch.pl which should
be fixed in Mondays linux-next.

    149 ERROR: space prohibited after that open parenthesis '('
    137 ERROR: space prohibited before that close parenthesis ')'

The spaces were added deliberately to make things line up nicely.
Because the table is longish then it creates a lot of warnings.

    115 WARNING: Possible unwrapped commit description (prefer a maximum 75 chars per line)

These were mostly oops output and fixes-lines.

    106 ERROR: trailing whitespace
     43 WARNING: macros should not use a trailing semicolon

The other main issue is that trace code is written in preprocessor
instead of C.  It's a bit unique like that.

     27 WARNING: Prefer pr_warn(... to pr_warning(...

A bunch of things are quite picky.  Why don't we just sed away
pr_warning() and get rid of this checkpatch warning?

     18 WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
     17 ERROR: Macros with complex values should be enclosed in parentheses
     15 ERROR: Macros with multiple statements should be enclosed in a do - while loop
     13 ERROR: space required after that ',' (ctx:VxV)
     11 WARNING: Prefer seq_puts to seq_printf
     10 WARNING: externs should be avoided in .c files
     10 ERROR: Do not include the paragraph about writing to the Free Software Foundation's mailing address from the sample GPL notice. The FSF has changed addresses in the past, and may do so again. Linux already includes a copy of the GPL.
      8 WARNING: quoted string split across lines
      8 WARNING: Missing a blank line after declarations
      6 WARNING: use relative pathname instead of absolute in changelog text
      6 WARNING: printk() should include KERN_ facility level
      5 WARNING: please, no space before tabs
      4 WARNING: Prefer [subsystem eg: netdev]_cont([subsystem]dev, ... then dev_cont(dev, ... then pr_cont(...  to printk(KERN_CONT ...
      4 WARNING: networking block comments don't use an empty /* line, use /* Comment...
      4 WARNING: Macros with flow control statements should be avoided
      4 ERROR: code indent should use tabs where possible
      3 WARNING: Possible switch case/default not preceeded by break or fallthrough comment
      3 ERROR: space required after that close brace '}'
      2 WARNING: Use a single space after To:
      2 WARNING: suspect code indent for conditional statements (16, 20)
      2 WARNING: 'charater' may be misspelled - perhaps 'character'?
      2 WARNING: braces {} are not necessary for single statement blocks
      2 WARNING: 'agaist' may be misspelled - perhaps 'against'?
      2 ERROR: Unrecognized email address: ''
      1 WARNING: 'writting' may be misspelled - perhaps 'writing'?
      1 WARNING: unnecessary whitespace before a quoted newline
      1 WARNING: 'teh' may be misspelled - perhaps 'the'?
      1 WARNING: struct file_operations should normally be const
      1 WARNING: static const char * array should probably be static const char * const
      1 WARNING: space prohibited between function name and open parenthesis '('
      1 WARNING: space prohibited before semicolon
      1 WARNING: simple_strtoull is obsolete, use kstrtoull instead
      1 WARNING: 'seach' may be misspelled - perhaps 'search'?
      1 WARNING: Possible unnecessary 'out of memory' message

The rest are spelling mistakes and minor things.

Looking through this, your code is different and special so it doesn't
work for you, but you aren't dealing with as many newbies as the rest of
us so that's ok.

I also ran checkpatch over the last 1000 patches from drivers/.

    741 WARNING: line over 80 characters
    141 WARNING: Possible unwrapped commit description (prefer a maximum 75 chars per line)
     41 WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
     32 ERROR: space prohibited after that open parenthesis '('
     28 WARNING: quoted string split across lines
     17 WARNING: braces {} are not necessary for single statement blocks
     15 WARNING: Missing a blank line after declarations
     11 WARNING: space prohibited between function name and open parenthesis '('
     11 WARNING: please, no spaces at the start of a line
      8 ERROR: code indent should use tabs where possible
      6 ERROR: "foo * bar" should be "foo *bar"
      5 WARNING: use relative pathname instead of absolute in changelog text
      5 WARNING: Possible unnecessary 'out of memory' message
      5 WARNING: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
      4 WARNING: unnecessary whitespace before a quoted newline
      4 ERROR: space required after that ',' (ctx:VxV)
      3 WARNING: Use #include <linux/io.h> instead of <asm/io.h>
      3 WARNING: sizeof *sctx should be sizeof(*sctx)
      3 WARNING: please write a paragraph that describes the config symbol fully
      3 WARNING: networking block comments don't use an empty /* line, use /* Comment...
      3 WARNING: braces {} are not necessary for any arm of this statement
      3 ERROR: Unrecognized email address: 'robh+dt@kernel.org'
      3 ERROR: Unrecognized email address: 'ijc+devicetree@hellion.org.uk'
      3 ERROR: space required after that ',' (ctx:OxV)
      3 ERROR: do not use assignment in if condition
      2 WARNING: Use of volatile is usually wrong: see Documentation/volatile-considered-harmful.txt
      2 WARNING: Use a single space after Cc:
      2 WARNING: 'unecessary' may be misspelled - perhaps 'unnecessary'?
      2 WARNING: sizeof(& should be avoided
      2 WARNING: Single statement macros should not use a do {} while (0) loop
      2 WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
      2 WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev, ... then dev_err(dev, ... then pr_err(...  to printk(KERN_ERR ...
      2 WARNING: please, no space before tabs
      2 WARNING: 'overriden' may be misspelled - perhaps 'overridden'?
      2 WARNING: Non-standard signature: Requested-by:
      2 WARNING: Macros with flow control statements should be avoided
      2 WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
      2 WARNING: else is not generally useful after a break or return
      2 WARNING: A patch subject line should describe the change not the tool that found it
      2 ERROR: space required before the open parenthesis '('
      2 ERROR: space required before that '&' (ctx:OxV)

Checkpatch.pl basically works for drivers.  There are a lot fewer
warnings and even the warnings that make it through the review process
are often correct.

regards,
dan carpenter
