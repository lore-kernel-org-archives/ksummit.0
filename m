Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 772F79F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 08:01:33 +0000 (UTC)
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFD9B1AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 08:01:32 +0000 (UTC)
Received: by oihr66 with SMTP id r66so104169912oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 08 Jul 2015 01:01:32 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CALCETrWywXiKcWc4jSQR1n9nuwVom81w0qnBo7_HRV7qNahURQ@mail.gmail.com>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<CALCETrWywXiKcWc4jSQR1n9nuwVom81w0qnBo7_HRV7qNahURQ@mail.gmail.com>
Date: Wed, 8 Jul 2015 10:01:32 +0200
Message-ID: <CAMuHMdU0sYYNmViTRw3ZtmBzwUxrTen50VunpEJwYahVYO2d9g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
	infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 8, 2015 at 1:31 AM, Andy Lutomirski <luto@amacapital.net> wrote:
> On Tue, Jul 7, 2015 at 1:42 PM, Jiri Kosina <jkosina@suse.com> wrote:
>> I think it'd be useful to have a session where maintainers could come up
>> with feature / improvement requests for kernel.org infrastructure and have
>> a subsequent discussion about whether they would be generally useful.
>>
>> Let me start with my personal wish:
>>
>> I personally would very welcome a facility that'd send out an e-mail if a
>> new commit is pushed to a git.kernel.org repo branch (sort of what tip-bot
>> and akpm's scripts are doing these days) to automatically notify the patch
>> author that the patch has been merged and pushed out.
>>
>> Suggested attendance: Konstantin, maintainers :)
>
> I wouldn't mind something like patchwork for lkml.  Since I use gmail
> (sigh), it's a minor PITA to pull out patchbombs in git am-able
> format.

For backup purposes, I run getmail from cron to download all my gmail
email.

To pull out a patchbomb:
  1. Select "Show original" in gmail for the cover letter,
  2. Copy Message-Id,
  3. Run "gmail-extract-patch-series message-id /tmp/cool-patch-series-"
     from the directory that contains the downloaded emails (I use one
     directory per day),
  4. git am -s /tmp/cool-patch-series-*.patch

$ cat $(type -p gmail-extract-patch-series)
#!/bin/bash

set -e

function usage()
{
        cat <<END

Usage: $(basename $0) <message-id> <prefix> [ <files> ... ]

END
        exit -1
}


if [ $# -lt 2 ]; then
        usage
fi

mid=$1
prefix=$2
shift
shift

if [ $# -lt 1 ]; then
        files=*
else
        files=$*
fi

for src in $(grep -l $mid $files); do
        if grep -m 1 "^Subject: Re: " $src > /dev/null; then
                echo Ignoring reply in $src
        else
                i=$(grep ^Subject: $src | sed -e 's@/.*$@@g' -e 's@^.* @@g')
                case $i in
                0|00|000) # Sending more than 999 patches is insane
                       suffix=txt
                        ;;
                *)
                        suffix=patch
                        ;;
                esac
                dst=$prefix$i.$suffix
                echo Extracting \"$(grep ^Subject $src | sed -e
's@Subject: @@g')\" to $dst
                cp -i $src $dst
        fi
done
$

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
