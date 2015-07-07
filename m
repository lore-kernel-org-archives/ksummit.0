Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 14A4CB3D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 23:39:18 +0000 (UTC)
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BA7FAFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 23:39:16 +0000 (UTC)
Received: by lbzd8 with SMTP id d8so826085lbz.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 07 Jul 2015 16:39:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <559C62D0.9090301@roeck-us.net>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<CALCETrWywXiKcWc4jSQR1n9nuwVom81w0qnBo7_HRV7qNahURQ@mail.gmail.com>
	<559C62D0.9090301@roeck-us.net>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 7 Jul 2015 16:38:55 -0700
Message-ID: <CALCETrVxt5xZ+ewoOR8TVH7YgN4mJkahVXSep2-aGoX4_i7mOQ@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
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

On Tue, Jul 7, 2015 at 4:37 PM, Guenter Roeck <linux@roeck-us.net> wrote:
> On 07/07/2015 04:31 PM, Andy Lutomirski wrote:
>>
>> On Tue, Jul 7, 2015 at 1:42 PM, Jiri Kosina <jkosina@suse.com> wrote:
>>>
>>> I think it'd be useful to have a session where maintainers could come up
>>> with feature / improvement requests for kernel.org infrastructure and
>>> have
>>> a subsequent discussion about whether they would be generally useful.
>>>
>>> Let me start with my personal wish:
>>>
>>> I personally would very welcome a facility that'd send out an e-mail if a
>>> new commit is pushed to a git.kernel.org repo branch (sort of what
>>> tip-bot
>>> and akpm's scripts are doing these days) to automatically notify the
>>> patch
>>> author that the patch has been merged and pushed out.
>>>
>>> Suggested attendance: Konstantin, maintainers :)
>>
>>
>> I wouldn't mind something like patchwork for lkml.  Since I use gmail
>> (sigh), it's a minor PITA to pull out patchbombs in git am-able
>> format.
>>
> What is wrong with https://patchwork.kernel.org/project/LKML/list/ ?

It's not spelled "linux-kernel".

/me runs away

--Andy
