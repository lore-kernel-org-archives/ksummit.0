Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E36AD8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:02:33 +0000 (UTC)
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2DE04164
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:02:33 +0000 (UTC)
Received: by lagx9 with SMTP id x9so213009513lag.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 07 Jul 2015 15:02:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGXu5jJN7z0Fa78SmyCe0mWE6mRY5f+giL-8CY_Li3tYwYeZrg@mail.gmail.com>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
	<CAGXu5jJN7z0Fa78SmyCe0mWE6mRY5f+giL-8CY_Li3tYwYeZrg@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 7 Jul 2015 15:02:11 -0700
Message-ID: <CALCETrUMeOdJstG1djALBidD60xOXNExh5vFZGbUSEJwyzutpw@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Tyler Baker <tyler.baker@linaro.org>, Mark Brown <broonie@sirena.org.uk>,
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

On Tue, Jul 7, 2015 at 1:46 PM, Kees Cook <keescook@chromium.org> wrote:
> There's also sysctl settings, and we also want privilege level as part
> of that configuration. (i.e. some tests should run as root, some show
> not, etc). It'd be nice to have the tests report these in some
> machine-readable form so that a test harness could check, prepare the
> environment, and then run the tests.
>

There was a fair amount of discussion about machine-readable output at
the last KS.  I don't know whether it ever got implemented.

--Andy
