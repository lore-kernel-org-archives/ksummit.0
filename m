Return-Path: <frowand.list@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F1070B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 17:50:46 +0000 (UTC)
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 117F2159
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 17:50:46 +0000 (UTC)
Received: by labgy5 with SMTP id gy5so98761679lab.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 09 Jul 2015 10:50:44 -0700 (PDT)
Message-ID: <559EB46F.3050602@gmail.com>
Date: Thu, 09 Jul 2015 10:50:39 -0700
From: Frank Rowand <frowand.list@gmail.com>
MIME-Version: 1.0
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <201507080121.41463.PeterHuewe@gmx.de> <6295903.xabUbmnLAs@avalon>
	<20150708160715.351ccf19@gandalf.local.home>
	<2008329.GxHAOdfmIf@vostro.rjw.lan>
In-Reply-To: <2008329.GxHAOdfmIf@vostro.rjw.lan>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
Reply-To: frowand.list@gmail.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 7/8/2015 2:31 PM, Rafael J. Wysocki wrote:
> On Wednesday, July 08, 2015 04:07:15 PM Steven Rostedt wrote:
>> On Wed, 08 Jul 2015 22:56:38 +0300
>> Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
>>  
>>> Reviewed-by or Acked-by metrics are unfortunately very easy to game. If we 
>>
>> I'm not worried about Acked-by, as that (to me anyway) is just a
>> maintainer telling other maintainers that they are fine with the
>> change, and they are OK with it going in via another tree.
>>
>> I also sometimes give an Acked-by, as a "I took a quick look, and it
>> looks good to me". I only add a Reviewed-by tag if I took enough effort
>> to understand every part of the patch as if I wrote it myself.
> 
> I do that too and that's my understanding of what the tag is for.

That seems to dilute the value of Acked-by.  Acked-by requires a review,
although the example statement of "yep, looks good to me" in SubmittingPatches
is a lot less stringent than the "Reviewer's statement of oversight" that is
attached to the Reviewed-by tag.

"I took a quick look" is not what I would like to encourage for reviews.

   ITAQL-by: frank.rowand@sonymobile.com

Would the "Cc:" tag be a more appropriate tag in this case?  (Described in the
same section as Acked-by in SubmittingPatches.)  Or maybe SubmittingPatches
needs to change to match reality?

SubmittingPatches:

   Acked-by: is not as formal as Signed-off-by:.  It is a record that the acker
   has at least reviewed the patch and has indicated acceptance.  Hence patch
   mergers will sometimes manually convert an acker's "yep, looks good to me"
   into an Acked-by: (but note that it is usually better to ask for an
   explicit ack).

Then the next paragraph also allows a subsystem maintainer to acknowledge just
that subsystem's part of a multiple subsystem patch.


> 
> However, some people treat it as a this-patch-looks-good-to-me tag.
> 
> But regardless of what tags you use, if you say something along the lines of:
> 
> - I like A (because of X).
> - I don't like B (because of Y).
> - C will break things because of Z.
> 
> in your review, every maintainer will be grateful for that.  I'd like people
> doing that kind of stuff to be recognized in some special way, because that's
> really really helpful (and we need it).
> 
> Honestly, I'm not sure how to make that happen.
> 
> Thanks,
> Rafael

- Frank
