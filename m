Return-Path: <d.phillips@partner.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 07911927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 21:27:20 +0000 (UTC)
Received: from usmailout2.samsung.com (mailout2.w2.samsung.com
	[211.189.100.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7EC7F201D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 21:27:19 +0000 (UTC)
Received: from uscpsbgex3.samsung.com
	(u124.gpu85.samsung.co.kr [203.254.195.124]) by mailout2.w2.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N5600CJE8GSD0B0@mailout2.w2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Tue,
	06 May 2014 17:17:16 -0400 (EDT)
Message-id: <53695159.60107@partner.samsung.com>
Date: Tue, 06 May 2014 14:17:13 -0700
From: Daniel Phillips <d.phillips@partner.samsung.com>
MIME-version: 1.0
To: Theodore Ts'o <tytso@mit.edu>, Arnd Bergmann <arnd@arndb.de>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org>
In-reply-to: <20140506201959.GD5012@thunk.org>
Content-type: text/plain; charset=ISO-8859-1; format=flowed
Content-transfer-encoding: 7bit
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

On 05/06/2014 01:19 PM, Theodore Ts'o wrote:
> On Tue, May 06, 2014 at 08:20:47PM +0200, Arnd Bergmann wrote:
>> Medical equipment (and I assume military, which is often in the same
>> category) is probably a big thing. I remember we had a big discussion
>> about a product at a former employer when a customer asked for support
>> beyond 2038. I think we ended up saying that the hardware is fine but
>> no supported distro would handle this.
> The question for the kernel summit is what sort of solutions can we
> suggest where we as kernel developers could help provide a solution
> for this problem?
>
> If the answer is "the kernel is fine (or could be trivially made
> fine)" but the problems are all at the glibc and/or distro level, then
> it's a problem, but I'm not sure we'd be able to make progress on
> solving it in this venue.
>

Hi Ted,

At minimum, the collective kernel voice has a great soapbox to stand on, 
it would not make sense to waste that, and no doubt there will always be 
more that could be done on the kernel side. For example, the kernel has 
a definitive vantage point to witness all 32 bit timestamps coming in 
and going out with the sign bit set. Perhaps some logging mechanism 
would be helpful in setting up audit systems to use in sandbox testing 
and triage on Jan 1, 2038, with a view to clawing back the sign bit.

Regards,

Daniel
