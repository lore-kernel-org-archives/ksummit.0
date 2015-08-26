Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9880AC1A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 12:56:34 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F6D6175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 12:56:34 +0000 (UTC)
Date: Wed, 26 Aug 2015 12:56:30 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Message-ID: <20150826125630.GH3684@io.lakedaemon.net>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com> <55B82222.3010409@samsung.com>
	<20150729074011.GB12557@amd> <55DCBB21.8070009@sonymobile.com>
	<55DD14C3.8090707@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55DD14C3.8090707@samsung.com>
Cc: Pavel Machek <pavel@ucw.cz>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	=?utf-8?Q?Andersson=2C_Bj=C3=B6rn?= <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 26, 2015 at 10:22:11AM +0900, Krzysztof Kozlowski wrote:
> Mali GPU drivers are an interesting case:
...
> 4. Their coding style is so different that I can't imagine mainlining
> them into staging area... Recently I was digging into Mali400 and it was
> literally hurting my eyes to see that coding style. It's like opposite
> of kernel.

iirc, gregkh's requirement for staging/ is that it compile.  Nothing
more.  If you're interested, I wrote a script a while back to automate
confirming that massive code cleanup (such as changing coding style)
doesn't change the resulting object code.  It's scripts/objdiff, I used
it for the initial import of skein and threefish crypto algorithms into
staging.

hth,

Jason.
