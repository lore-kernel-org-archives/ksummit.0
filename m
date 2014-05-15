Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 90323523
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 17:20:46 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 46C9E201BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 17:20:46 +0000 (UTC)
Message-ID: <5374F758.7020204@zytor.com>
Date: Thu, 15 May 2014 10:20:24 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Grant Likely <grant.likely@secretlab.ca>,
	Josh Triplett <josh@joshtriplett.org>, Arnd Bergmann <arnd@arndb.de>
References: <5367D989.1000504@linaro.org>	<1399581426.11946.12.camel@deadeye.wl.decadent.org.uk>	<20140509151043.GC15523@thunk.org>
	<4440149.cMfuUKn6MV@wuerfel>	<20140509223315.GA5725@thin>
	<536D6FE2.5050503@zytor.com>
	<20140515121859.BEC80C40B0E@trevor.secretlab.ca>
In-Reply-To: <20140515121859.BEC80C40B0E@trevor.secretlab.ca>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: John Stultz <john.stultz@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/15/2014 05:18 AM, Grant Likely wrote:
> 
> And yet still, once deployed will never get updated. :-(
> 

That is a whole separate problem.  I'm not quite convinced that it will
work that way... maybe ubiquitous upgrades will be a solved problem by then.

	-hpa
