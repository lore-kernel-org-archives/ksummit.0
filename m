Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C9449FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 13:02:22 +0000 (UTC)
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 06250E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 13:02:14 +0000 (UTC)
Received: by labgy5 with SMTP id gy5so41703757lab.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 07 Jul 2015 06:02:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150707092434.GE11162@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
Date: Tue, 7 Jul 2015 16:02:13 +0300
Message-ID: <CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 7, 2015 at 12:24 PM, Mark Brown <broonie@kernel.org> wrote:

>  - Should we start carrying config fragments upstream designed to
>    support testing, things like the distro config fragments that keep
>    getting discussed are one example here but there's other things like
>    collections of debug options we could be looking at.

This will gravitate everyone to running the same config which is the opposite
of what you want.
