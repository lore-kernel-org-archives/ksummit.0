Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 91EF43226
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 13:45:25 +0000 (UTC)
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 498CA6E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 13:45:25 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id f78-v6so7470457pfe.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 06:45:25 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Josh Triplett <josh@joshtriplett.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>
References: <20181017071902.30102-1-geert@linux-m68k.org>
	<20181017091325.GA15991@localhost>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <c28df7c4-eb3f-3864-862c-edc330a8fce8@roeck-us.net>
Date: Wed, 17 Oct 2018 06:45:22 -0700
MIME-Version: 1.0
In-Reply-To: <20181017091325.GA15991@localhost>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org,
	Tomi Valkeinen <tomi.valkeinen@iki.fi>
Subject: Re: [Ksummit-discuss] [PATCH] code-of-conduct: Remove explicit list
 of discrimination factors
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/17/2018 02:13 AM, Josh Triplett wrote:
> On Wed, Oct 17, 2018 at 09:19:01AM +0200, Geert Uytterhoeven wrote:
>> Providing an explicit list of discrimination factors may give the false
>> impression that discrimination based on other unlisted factors would be
>> allowed.
> 
> This impression is, in fact, false, as has already been discussed
> elsewhere. I had hoped that discussion would suffice.
> 
> As mentioned there: The original commit explicitly said "Explicit
> guidelines have demonstrated success in other projects and other areas
> of the kernel."; this is precisely the kind of explicit guideline it
> refers to. Listing explicit cases to cover does not imply other cases
> are not covered; it does, however, ensure that the listed cases *are*,
> and helps people know that they're covered.
> 

That is really a matter of opinion. Mathematically speaking, your statement
is incorrect. One may wonder why the list is made explicit without hint
that it is an example. For example, political or social views are _not_
listed. Wasn't the same CoC used in other projects to at least try to
punish individuals with specific political and/or social opinions,
just for having those opinions and expressing them outside the scope of
the project ?

> This patch is not OK, and defeats one of the purposes of the original
> change.

The CoC, as it stands, singles out maintainers for enforcement action.
Based on your statement, is it correct to assume that this was on
purpose ? If not, what is the explicit list of purposes of the
original change ?

Guenter
