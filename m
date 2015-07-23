Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4777E482
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 11:21:21 +0000 (UTC)
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31384A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 11:21:20 +0000 (UTC)
Received: by oihq81 with SMTP id q81so163148006oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 04:21:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150723105726.GC30929@amd>
References: <20150723105726.GC30929@amd>
Date: Thu, 23 Jul 2015 13:21:19 +0200
Message-ID: <CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Pavel Machek <pavel@ucw.cz>,
	Bjorn Andersson <Bjorn.Andersson@sonymobile.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:

> Significant percentage of phones run Linux kernel today, but geting
> mainline kernel to work on a phone is very hard to do. (So hard, that
> newest device that is close to working on recent mainline was made in
> 2009.) There are multiple obstacles, including huge patches from
> silicon vendors, missing GNU/Linux userspace support that makes kernel
> testing hard, interfaces unsuitable for phones and power management
> problems.
>
> Interested people:
>
> Sebastian Reichel <sre@kernel.org>
> Pali Roh=C3=A1r <pali.rohar@gmail.com>

I'm adding Bj=C3=B6rn Andersson <bjorn.andersson@sonymobile.com> to this li=
st.

Bj=C3=B6rn has as of yesterday booted a mainline kernel on the SONY
Xperia Z3 and his company has demonstrated strong interest in
getting the mainline kernel to run on their handsets.
https://plus.google.com/102276447148493441479/posts/amRvpE8piSw

Yours,
Linus Walleij
