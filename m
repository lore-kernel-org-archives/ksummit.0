Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8D4CF927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Sep 2014 18:08:21 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C8D02031D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Sep 2014 18:08:21 +0000 (UTC)
Message-ID: <540DF078.3030601@zytor.com>
Date: Mon, 08 Sep 2014 11:07:52 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: One Thousand Gnomes <gnomes@lxorguk.ukuu.org.uk>,
	Pavel Machek <pavel@ucw.cz>
References: <53EAAC95.7080301@linaro.org>	<CALAqxLWvSn2_6dakGiQ4VEtYHH2Dt7BL0pn5XHgLWOV4ePqhBw@mail.gmail.com>	<20140823222640.GA1382@xo-6d-61-c0.localdomain>
	<20140908185544.621022b6@alan.etchedpixels.co.uk>
In-Reply-To: <20140908185544.621022b6@alan.etchedpixels.co.uk>
Content-Type: text/plain; charset=ISO-8859-1
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

On 09/08/2014 10:55 AM, One Thousand Gnomes wrote:
>> Today, there's good chance there's linux somewhere in your car. (Dashboard,
>> entertainment system). People like to keep cars from 1910 working, and I suspect
>> that is not going to change.
>>
>> So yes, in 2038 people will be running 32bit linux.
>>
>> Whether there will be people putting 32bit linux into new devices is a question,
>> but I suspect answer is still yes.
> 
> I'm currently trying to add 64bit longlong support to an initial PCC 8086
> compiler port so I can fix that for some 16bit projects 8-)
> 
> My 8bit machines are mostly 2038 safe already.
> 

Back in 1985 I decided to Y2K-test my ABC800 8-bit computer.  It passed
(they had implemented a windowed year solution which breaks in 2070 or
2080, as I recall.)

	-hpa
