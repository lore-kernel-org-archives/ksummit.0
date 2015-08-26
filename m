Return-Path: <sudipm.mukherjee@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C711FB7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 04:25:49 +0000 (UTC)
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56CA51CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 04:25:49 +0000 (UTC)
Received: by pabzx8 with SMTP id zx8so55990372pab.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 21:25:49 -0700 (PDT)
Date: Wed, 26 Aug 2015 09:55:38 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Message-ID: <20150826042537.GA4022@sudip-pc>
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
	=?iso-8859-1?Q?Andersson=2C_Bj=F6rn?= <Bjorn.Andersson@sonymobile.com>
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
> On 26.08.2015 03:59, Tim Bird wrote:
> > On 07/29/2015 12:40 AM, Pavel Machek wrote:
<snip>
> 
> 4. Their coding style is so different that I can't imagine mainlining
> them into staging area... Recently I was digging into Mali400 and it was
> literally hurting my eyes to see that coding style. It's like opposite
> of kernel.
Hi,
I have seen Mali code once few months ago and true that the styling
there is exactly opposite of what we use. But anyway, I hope including
that in staging will be beneficial for all of you. And I can also guess
that it will be a waste of your time if you add it to staging and
refactor the code ultimately merging it to the main part of the kerel.

I am not an experienced Mali developer but if you all are ok with it then
I can take up the task of adding it to staging. But I will need to have
a board for that as without hardware Greg will not allow the code to be
added. And Krzysztof has suggested ODROID-U3 for this purpose.

Regards
Sudip
