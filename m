Return-Path: <rdunlap@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59B10B50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 16:25:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16DF177C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 16:25:38 +0000 (UTC)
To: Pavel Machek <pavel@ucw.cz>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<CAKMK7uFvmXtk=WiZJxGrzQQD1RHv7srA-_e8KdwXZ9Kn5rcmiQ@mail.gmail.com>
	<1538934030.4010.1.camel@HansenPartnership.com>
	<20181010161256.GB19941@amd>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <5e5c745b-5b59-6655-99b1-c40874fdbdf2@infradead.org>
Date: Wed, 10 Oct 2018 09:25:36 -0700
MIME-Version: 1.0
In-Reply-To: <20181010161256.GB19941@amd>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 0/2] code of conduct fixes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/10/18 9:12 AM, Pavel Machek wrote:
> Hi!
> 
>>> Personally I'm not happy at all with how the new code of conduct was
>>> rushed in, least because I still don't understand why it happened,
>>> but also for all the other reasons we've discussed here in the past
>>> few weeks.
> 
> These are exactly my thoughts.

Exactly.  We have a process and the 4.19-rc4 CoC patch did not follow it.

>>> But I also understand that there's lots of people (me included) who
>>> don't want to ship a release with the code of conduct in it's current
>>> in-between state. I think adding a disclaimer at the top, along the
>>> lines of
>>>
>>> "Please note that this code of conduct and it's enforcement are still
>>> under discussion."
>>
>> I don't disagree with the position, but eliminating our old code of
>> conduct in favour of another we cast doubt on with this disclaimer
>> effectively leaves us with nothing at all, which seems to be a worse
>> situation.  In that case, I think reverting the CoC commit
>> (8a104f8b5867c682) and then restarting the replacement process is
>> better than adding a disclaimer to the new one.
> 
> Reverting it then having proper discussion sounds suitable to me.
> 
> (And it would be nice to have something on the mailing lists, too, as
> I probably won't make it to kernel summit this year.)

Ditto.

-- 
~Randy
