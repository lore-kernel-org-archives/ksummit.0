Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 54084BB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 12:10:58 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 82481EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 12:10:57 +0000 (UTC)
Date: Wed, 8 Jul 2015 14:10:36 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
In-Reply-To: <CAMuHMdWH+g+=Ra6Do1TOQ8OdvUZ3Y051RnTpOzAQx-AWYidaFQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1507081407471.10183@pobox.suse.cz>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
	<20150708075409.GJ4341@mwanda>
	<CAMuHMdWH+g+=Ra6Do1TOQ8OdvUZ3Y051RnTpOzAQx-AWYidaFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Wed, 8 Jul 2015, Geert Uytterhoeven wrote:

> > should be sending emails to everyone introducing new build warnings.
> > Are people ignoring them?
> 
> Of course people ignore them ;-)

I think the biggest problems with these are:

- they are all squashed together into one report, totally unrelated things 
  together at one place. Noone is ever going to be actively looking into 
  it to see whether something he's responsible for hasn't popped up

- they are not addressed to anybody explicitly. Sending them just to LKML 
  is a direct ticket to the "be ignored" land

Thanks,

-- 
Jiri Kosina
SUSE Labs
