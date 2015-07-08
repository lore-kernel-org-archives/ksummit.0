Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E615BBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 20:08:40 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8D06417B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 20:08:36 +0000 (UTC)
Message-ID: <559D8336.3040802@roeck-us.net>
Date: Wed, 08 Jul 2015 13:08:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>, jic23@jic23.retrosnub.co.uk
References: <201507080121.41463.PeterHuewe@gmx.de>	<1481488.5WJFbB0Dlm@vostro.rjw.lan>	<1436341028.2136.14.camel@HansenPartnership.com>	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
In-Reply-To: <20150708145315.29030a75@gandalf.local.home>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/08/2015 11:53 AM, Steven Rostedt wrote:
> On Wed, 08 Jul 2015 09:00:32 +0100
> jic23@jic23.retrosnub.co.uk wrote:
>
>
>>> We can alter that somewhat.  We used to run a Maintainers lottery for
>>> the kernel summit ... we could instead offer places based on the number
>>> of Reviewed-by: tags ... we have all the machinery to calculate that.  I
>>> know an invitation to the kernel summit isn't a huge incentive, but it's
>>> a useful one.
>>
>> Sounds like a good idea to me, though it would only effect a tiny
>> percentage of our reviewers.  I suppose publishing a short list of the top
>> n% of reviewers from which the lottery runs might give some
>> recognition.
>>
>
> I personally don't trust a Reviewed-by tag much, as I sometimes see
> them appear without any comments.
>

Except for the following, they are always reliable and can be trusted.

Reviewed-by: Edsel Murphy <edsel@murphy.com>

Seriously, it does happen that I send Reviewed-by: or Acked-by: feedback if
a patch is just fine as-is. What do you expect the reviewer to do in such
a case ?

Thanks,
Guenter
