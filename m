Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D07C08EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:29:26 +0000 (UTC)
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56B751DA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:29:26 +0000 (UTC)
Received: by obdeg2 with SMTP id eg2so8321676obd.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 07:29:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUK2_7+Y9+ffpJKTy8LcwogFcg+XAGrif0YcTT4C4u-wQ@mail.gmail.com>
References: <20150801164142.653012af@lwn.net>
	<1893963.CjFnBCekyb@vostro.rjw.lan>
	<20150803083311.5abd23f6@lwn.net> <6756795.jjv2YY7pQg@avalon>
	<20150804135044.GB5180@mwanda>
	<CAMuHMdUK2_7+Y9+ffpJKTy8LcwogFcg+XAGrif0YcTT4C4u-wQ@mail.gmail.com>
Date: Tue, 4 Aug 2015 16:29:25 +0200
Message-ID: <CAKMK7uEb8=FoudmUiX+yLievB2qP2aaiUMuA_4m+N--qWspyMA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 4, 2015 at 4:05 PM, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, Aug 4, 2015 at 3:50 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>> I have all the tools to read it.  I remember this because it requires
>> 700MB of dependencies.  I was downloading it to read the kdbus
>> documentation.  I remember this.  I don't think I read the kdbus
>> documentation in the end.  I certainly don't know, without googling, how
>> to use build the docbook output.
>
> I gave up trying to build the docbook docs many years ago.
>
> Cross-compiling kernels for niche architectures is peanuts compared to
> generating docbook output ;-(

Don't build the pdf, it's useless. Build the html pages with all the
links and stuff, and that just about requires an xlstproc plus the
docbook stylesheets. Building the html pages is as simple as

$ make htmldocs

and make help will tell you that too.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
