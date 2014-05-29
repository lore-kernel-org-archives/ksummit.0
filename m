Return-Path: <rdunlap@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6EDEDBDB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 00:47:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EC3FC1FA0E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 00:47:27 +0000 (UTC)
Message-ID: <53868397.1040002@infradead.org>
Date: Wed, 28 May 2014 17:47:19 -0700
From: Randy Dunlap <rdunlap@infradead.org>
MIME-Version: 1.0
To: Mimi Zohar <zohar@linux.vnet.ibm.com>, josh@joshtriplett.org
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>	<20140524111927.GA3455@katana>	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>	<4700397.FLxRVChBLf@vostro.rjw.lan>	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>	<20140528162833.GA23815@thin>	<alpine.DEB.2.10.1405282332430.3952@nanos>	<20140528233145.GA14933@cloud>
	<1401323970.13546.188.camel@dhcp-9-2-203-236.watson.ibm.com>
In-Reply-To: <1401323970.13546.188.camel@dhcp-9-2-203-236.watson.ibm.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/28/2014 05:39 PM, Mimi Zohar wrote:
> On Wed, 2014-05-28 at 16:31 -0700, josh@joshtriplett.org wrote:
>>
>>> That's the real issue. And this needs to be fixed first.
>>>
>>> I really started to put breaks into this cycle of hell, where I get
>>> spammed with a 30+ patch series in the morning and after I spent some
>>> quality time looking at it and replying to a particular patch, I get
>>> another spam bomb within a few hours, which is not much better than
>>> the previous one.
>>
>> That's definitely a good workflow question.  We tell people to break
>> huge patches down into pieces, and that can turn substantial changes
>> into long patch series.
> 
> Sometimes it isn't possible, or desirable, to break up large patch sets,
> but for the most part that isn't the case.  The next step would be to
> have all of the patches within a patch set be related.

from Documentation/SubmittingPatches:

patch series (where a "patch 
series" is an ordered sequence of multiple, related patches).

Not that anyone reads documentation.


-- 
~Randy
