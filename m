Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 68B71312D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 13:32:40 +0000 (UTC)
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DF1E46E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 13:32:39 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id f8-v6so12731665plb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 06:32:39 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>,
	Josh Triplett <josh@joshtriplett.org>
References: <20181017071902.30102-1-geert@linux-m68k.org>
	<20181017091325.GA15991@localhost>
	<CAMuHMdX0G767xYYcd8TDMLBp3cY9+fz_aJFAuz8OxgmCmhbNrg@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <1a51fc4c-882c-59ef-7497-262e595af10e@roeck-us.net>
Date: Wed, 17 Oct 2018 06:32:36 -0700
MIME-Version: 1.0
In-Reply-To: <CAMuHMdX0G767xYYcd8TDMLBp3cY9+fz_aJFAuz8OxgmCmhbNrg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org, tomi.valkeinen@iki.fi
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

On 10/17/2018 02:31 AM, Geert Uytterhoeven wrote:
> Hi Josh,
> 
> Thanks for your comments!
> 
> On Wed, Oct 17, 2018 at 11:13 AM Josh Triplett <josh@joshtriplett.org> wrote:
>> On Wed, Oct 17, 2018 at 09:19:01AM +0200, Geert Uytterhoeven wrote:
>>> Providing an explicit list of discrimination factors may give the false
>>> impression that discrimination based on other unlisted factors would be
>>> allowed.
>>
>> This impression is, in fact, false, as has already been discussed
>> elsewhere. I had hoped that discussion would suffice.
> 
> The CoC FAQ is not part of the CoC, and not part of the Linux kernel.
> If the CoC is imprecise, it should be fixed in the CoC, not in a separate
> document hosted elsewhere, as discussed elsewhere.
> 
> Comparison with the GPL and the GPL FAQ is not appropriate, as the GPL
> is still the precise legal document, while its FAQ is a clarification using
> laymen's terms.
> 
>> As mentioned there: The original commit explicitly said "Explicit
>> guidelines have demonstrated success in other projects and other areas
>> of the kernel."; this is precisely the kind of explicit guideline it
> 
> Given the original commit was not submitted for and objected to public
> review, nobody had the chance to question these statements, and ask for
> pointers of proof, which would surely have happened.
> 
>> refers to. Listing explicit cases to cover does not imply other cases
>> are not covered;
> 
> It does, if not accompanied by "examples of...", like in the other sections.
> 
>> it does, however, ensure that the listed cases *are*,
>> and helps people know that they're covered.
> 
> So you agree people cannot know if the unlisted cases are covered or not?
> 
>> This patch is not OK, and defeats one of the purposes of the original
>> change.
> 
> So the purpose of the original change was to list a number of factors,
> without saying that it was just a list of examples?

One could consider adding something like "discrimination factors such as",
or maybe "or any other discrimination factors not listed here" to the
original text. Or a simple "regardless of, for example, ...".

Guenter
