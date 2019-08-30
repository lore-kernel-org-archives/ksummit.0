Return-Path: <shuah@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E27C7618F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 14:36:12 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 99FDAF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 14:36:12 +0000 (UTC)
To: Shuah Khan <skhan@linuxfoundation.org>, "Theodore Y. Ts'o"
	<tytso@mit.edu>, ksummit-discuss@lists.linuxfoundation.org
References: <20190830031720.GA7490@mit.edu>
	<757b2868-5ac6-5da7-a064-0b8393e1aa41@linuxfoundation.org>
From: shuah <shuah@kernel.org>
Message-ID: <1b411421-9be2-9371-e072-e279383c062d@kernel.org>
Date: Fri, 30 Aug 2019 08:36:11 -0600
MIME-Version: 1.0
In-Reply-To: <757b2868-5ac6-5da7-a064-0b8393e1aa41@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 8/30/19 7:58 AM, Shuah Khan wrote:
> On 8/29/19 9:17 PM, Theodore Y. Ts'o wrote:
>> The following topics have been proposed for the maintainer's summit on
>> this list:
>>
>> * Squashing Bugs!   (Shuah Kahn)
>>      How do we deal with the high volume of bugs reported (especially
>>      by automated systems like syzbot)
>>

I am exploring and discussing bringing syzbot reproducers and add them
to kselftest regression tests with Dmitry. I will have to create a few
kselftest framework hooks to run these perhaps. We can discuss that when
we talk about syzbot bugs and how to keep up with them.

thanks,
-- Shuah
