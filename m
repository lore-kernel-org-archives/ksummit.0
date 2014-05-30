Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 217868A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 12:07:38 +0000 (UTC)
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 946571FAAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 12:07:37 +0000 (UTC)
Received: by mail-ob0-f171.google.com with SMTP id wn1so1688492obc.30
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 05:07:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140528185748.GA30673@kroah.com>
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
Date: Fri, 30 May 2014 14:07:36 +0200
Message-ID: <CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 8:57 PM, Greg KH <greg@kroah.com> wrote:
> On Wed, May 28, 2014 at 04:37:02PM +0100, Mel Gorman wrote:
>> As LTP is reported to
>> be sane these days for some tests, it could conceivably be wrapped by "make
>> test" to avoid duplicating effort there. I think that would be worthwhile
>> if someone had the time to push it because it would be an unconditional win.
>
> That is what I have been asking for for _years_.  Hopefully someday
> someone does this...

Does this read "let's pull LTP into the kernel source tree"?

I have a hard time seing what else it could mean.

Yours,
Linus Walleij
