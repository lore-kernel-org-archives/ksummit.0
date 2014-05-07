Return-Path: <d.phillips@partner.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 97C43681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 01:56:30 +0000 (UTC)
Received: from usmailout1.samsung.com (mailout1.w2.samsung.com
	[211.189.100.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E6FE20313
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 01:56:29 +0000 (UTC)
Received: from uscpsbgex1.samsung.com
	(u122.gpu85.samsung.co.kr [203.254.195.122]) by mailout1.w2.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N5600LMKLE4XY30@mailout1.w2.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Tue,
	06 May 2014 21:56:28 -0400 (EDT)
Message-id: <536992C6.70305@partner.samsung.com>
Date: Tue, 06 May 2014 18:56:22 -0700
From: Daniel Phillips <d.phillips@partner.samsung.com>
MIME-version: 1.0
To: "Luck, Tony" <tony.luck@intel.com>, Theodore Ts'o <tytso@mit.edu>,
	Arnd Bergmann <arnd@arndb.de>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <53695159.60107@partner.samsung.com>
	<3908561D78D1C84285E8C5FCA982C28F327FAE35@ORSMSX114.amr.corp.intel.com>
In-reply-to: <3908561D78D1C84285E8C5FCA982C28F327FAE35@ORSMSX114.amr.corp.intel.com>
Content-type: text/plain; charset=ISO-8859-1; format=flowed
Content-transfer-encoding: 7bit
Cc: John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/06/2014 02:56 PM, Luck, Tony wrote:
>> and going out with the sign bit set. Perhaps some logging mechanism
>> would be helpful in setting up audit systems to use in sandbox testing
>> and triage on Jan 1, 2038, with a view to clawing back the sign bit.
> We can't wait till Jan 2038 to commit a change - programs want to
> work with dates in the future - allegedly the first Y2038 bugs began
> appearing in 2008 when banks issuing 30 year mortgages were unable
> to print the correct date for final payment.
> -Tony
To clarify, sandbox testing can and should start any time. The "triage" 
part attempts to answer the question: what about bad behavior that 
somehow slips through the net and manifests only on the day of 
reckoning? The idea is to provide admins the ability to monitor their 
systems and spot issues at source as opposed to letting things go 
silently wrong and potentially cause problems far downstream. Another 
way of saying it: what way is there to be sure that the problematic 
interfaces are no longer being used, other than monitoring them? It's 
clear this is the responsible thing to do, what is less clear is whether 
the task could benefit from kernel help. Say, CONFIG_Y2038_PARANOIA.

Regards,

Daniel
