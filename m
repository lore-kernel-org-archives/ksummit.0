Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CBD6DD8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:14:00 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CD9C93D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:13:59 +0000 (UTC)
Message-ID: <1561756437.3335.26.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Shuah Khan <skhan@linuxfoundation.org>, "Luck, Tony" <tony.luck@intel.com>
Date: Fri, 28 Jun 2019 14:13:57 -0700
In-Reply-To: <5a778d63-24c3-cf15-2444-49e67f4e1b96@linuxfoundation.org>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<5a778d63-24c3-cf15-2444-49e67f4e1b96@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2019-06-28 at 15:07 -0600, Shuah Khan wrote:
> On 6/28/19 2:51 PM, Luck, Tony wrote:
> > On Fri, Jun 28, 2019 at 02:11:28PM -0600, Shuah Khan wrote:
[...]
> > Where substantial changes were made between patch versions it
> > would be useful if the commit logs were adapted to say things like:
> > 
> >   "We considered using technique X to do this but rejected
> >    it because person Y said it had problem Z"
> > 
> 
> There is value to having information about alternatives if any.
> But not the trivial change history.

But we already have the cregit project that tries to attach mailing
list discussion pointers to every semantic tag in the source code

https://cregit.linuxsources.org/code/

It's only up to 4.20 but it's still useful.  I think the complexity of
our development process means that we need the changelog to be
succinct, so a brief discussion of the reasons for the patch, not every
point that was raised and considered during the mailing list discussion
because that's asking to have long winded and hard to read changelogs. 
If someone wants the full history they use a project like cregit to
find it.

James
