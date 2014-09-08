Return-Path: <gnomes@lxorguk.ukuu.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3690B92F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Sep 2014 18:28:12 +0000 (UTC)
Received: from lxorguk.ukuu.org.uk (251.110.2.81.in-addr.arpa [81.2.110.251])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5562820270
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Sep 2014 18:28:09 +0000 (UTC)
Date: Mon, 8 Sep 2014 18:55:44 +0100
From: One Thousand Gnomes <gnomes@lxorguk.ukuu.org.uk>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20140908185544.621022b6@alan.etchedpixels.co.uk>
In-Reply-To: <20140823222640.GA1382@xo-6d-61-c0.localdomain>
References: <53EAAC95.7080301@linaro.org>
	<CALAqxLWvSn2_6dakGiQ4VEtYHH2Dt7BL0pn5XHgLWOV4ePqhBw@mail.gmail.com>
	<20140823222640.GA1382@xo-6d-61-c0.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	lkml <linux-kernel@vger.kernel.org>, John Stultz <john.stultz@linaro.org>,
	"Joseph S. Myers" <joseph@codesourcery.com>
Subject: Re: [Ksummit-discuss] (Resend) 2038 Kernel Summit Discussion Fodder
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> Today, there's good chance there's linux somewhere in your car. (Dashboard,
> entertainment system). People like to keep cars from 1910 working, and I suspect
> that is not going to change.
> 
> So yes, in 2038 people will be running 32bit linux.
> 
> Whether there will be people putting 32bit linux into new devices is a question,
> but I suspect answer is still yes.

I'm currently trying to add 64bit longlong support to an initial PCC 8086
compiler port so I can fix that for some 16bit projects 8-)

My 8bit machines are mostly 2038 safe already.

Alan
