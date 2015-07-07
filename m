Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2756ABC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 19:21:37 +0000 (UTC)
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 819FE1B2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 19:21:36 +0000 (UTC)
Received: by obdbs4 with SMTP id bs4so135762004obd.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 07 Jul 2015 12:21:36 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <559BEF61.8050904@roeck-us.net>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
Date: Tue, 7 Jul 2015 21:21:35 +0200
Message-ID: <CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Guenter Roeck <linux@roeck-us.net>
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

On Tue, Jul 7, 2015 at 5:25 PM, Guenter Roeck <linux@roeck-us.net> wrote:
>> In terms of discussion topics some of the issues I'm seeing are:
>>
>>   - Can we pool resources to share the workload of running things and
>>     interpreting results, ideally also providing some central way for
>>     people to discover what results are out there for them to look at
>>     for a given kernel in the different systems?
>>
> That might be quite useful. However, I have seen that it doesn't really
> help to just provide the test results. kissb test results have been
> available for ages, and people just don't look at it. Even the regular
> "Build regression" e-mails sent out by Geert seem to be widely ignored.

There's still a manual step involved, so I only download the logs and
generate the regression emails for every rc release.
My original plan was to automate it more, so I could run it fully automated
on the linux-next builds, too.

> What I really found to help is to bisect new problems and send an e-mail
> to the responsible maintainer and to the submitter of the patch which
> introduced it. I'd like to automate that with my test system, but
> unfortunately I just don't have the time to do it.

IIRC, kisskb used to bisect failures, but stopped doing that when it started
consuming too much time. Perhaps it can be restarted, given the system
got an upgrade a few months ago and became much much faster?
Stiil, there's the "analyzing" part.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
