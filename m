Return-Path: <geert.uytterhoeven@gmail.com>
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20170626161828.3914fcc1@lwn.net>
References: <20170623123936.42dab05f@lwn.net>
	<20170624074641.4820fecd@vento.lan>
	<1779146.rtcHP5MkoH@aspire.rjw.lan> <20170624104142.70677fcb@vento.lan>
	<alpine.LSU.2.20.1706252254190.30709@cbobk.fhfr.pm>
	<20170626161828.3914fcc1@lwn.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 28 Jun 2017 21:48:47 +0200
Message-ID: <CAMuHMdWJLkJe=a0YiiypzZ728Sv=SK87-E2qXw5dBiz2zSfB-Q@mail.gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	Jiri Kosina <jkosina@suse.cz>, ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jon,

On Tue, Jun 27, 2017 at 12:18 AM, Jonathan Corbet <corbet@lwn.net> wrote:
> On Sun, 25 Jun 2017 22:56:07 +0200 (CEST)
> Jiri Kosina <jkosina@suse.cz> wrote:
>> Unfortunately option (3) has also been applied to some of the files:
>>
>>       $ ll Documentation/kernel-parameters.txt
>>       ls: cannot access 'Documentation/kernel-parameters.txt': No such file or directory
>>
>> I wasn't sure whether this was intentional or not. But if not, I'll
>> happily send a patch that introduces a symlink.
>
> Worries about moving well-known files are why I delayed some of this stuff
> a bit so I could bring it up at conferences and the kernel summit.  It
> only proceeded after I didn't get any real pushback in those settings.
>
> In general, we move files around in the kernel tree all the time.  We
> don't normally leave symlinks behind; indeed, we never do.  Instead, we
> figure out where the file moved to and get on with life.  Are
> documentation files somehow different, needing different rules in this
> regard?  I wouldn't mind some clarity on that point.

Documentation files are special in that they (some of them) are much more
likely to be linked from an external web page, and may be read by mere
mortals.

My gut feeling says this is mostly limited to SubmittingPatches and
CodingStyle, which are (coincidently?) the only two files in the top level
using CamelCase.

Source files are mostly used by developers, who don't rely on external links,
and who are used to work with the source file hierarchy on a regular basis.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
