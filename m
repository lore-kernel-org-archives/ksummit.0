Return-Path: <jwboyer@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 80E28BB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 12:37:19 +0000 (UTC)
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14F951C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 12:37:19 +0000 (UTC)
Received: by igcqs7 with SMTP id qs7so54904486igc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 08 Jul 2015 05:37:18 -0700 (PDT)
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <alpine.LNX.2.00.1507081407471.10183@pobox.suse.cz>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
	<20150708075409.GJ4341@mwanda>
	<CAMuHMdWH+g+=Ra6Do1TOQ8OdvUZ3Y051RnTpOzAQx-AWYidaFQ@mail.gmail.com>
	<alpine.LNX.2.00.1507081407471.10183@pobox.suse.cz>
Date: Wed, 8 Jul 2015 08:37:18 -0400
Message-ID: <CA+5PVA6Twt0urG32UWQ6k0-BtrcFzQ+Cec8=XiF03GV139MLfg@mail.gmail.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
To: Jiri Kosina <jkosina@suse.com>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 8, 2015 at 8:10 AM, Jiri Kosina <jkosina@suse.com> wrote:
> On Wed, 8 Jul 2015, Geert Uytterhoeven wrote:
>
>> > should be sending emails to everyone introducing new build warnings.
>> > Are people ignoring them?
>>
>> Of course people ignore them ;-)
>
> I think the biggest problems with these are:
>
> - they are all squashed together into one report, totally unrelated things
>   together at one place. Noone is ever going to be actively looking into
>   it to see whether something he's responsible for hasn't popped up
>
> - they are not addressed to anybody explicitly. Sending them just to LKML
>   is a direct ticket to the "be ignored" land

Yep.  The same goes for bug reports.  LKML is a great archiving tool
for digging through history, but it is useless as a form of general
communication.

josh
