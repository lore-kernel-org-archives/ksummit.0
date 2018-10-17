Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C6B1637B8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 19:08:53 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45D4F712
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 19:08:53 +0000 (UTC)
Message-ID: <1539803331.3769.62.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Frank Rowand <frowand.list@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 17 Oct 2018 12:08:51 -0700
In-Reply-To: <16a20416-0045-dfe6-d937-63f2f0cff269@gmail.com>
References: <1539701820.2805.6.camel@HansenPartnership.com>
	<1539701896.2805.7.camel@HansenPartnership.com>
	<e332116b-62e8-9930-c263-d022edb5828e@gmail.com>
	<1539744091.2805.108.camel@HansenPartnership.com>
	<16a20416-0045-dfe6-d937-63f2f0cff269@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH v3 1/3] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2018-10-17 at 11:49 -0700, Frank Rowand wrote:
> On 10/16/18 19:41, James Bottomley wrote:
> > On Tue, 2018-10-16 at 19:10 -0700, Frank Rowand wrote:
[...]
> > > Repeating my comment on version 1:
> > > 
> > > My understanding of the concern behind this change is that we
> > > should be able to use an email address for the current
> > > development practices, such as Reported-by, Suggested-by, etc
> > > tags when the email address was provided in what is a public
> > > space for the project.  The public space is visible to anyone in
> > > the world who desires to access it.
> > > 
> > > I do not understand how "ordinarily collected by the project" is
> > > equivalent to "an email address that was provided in a public
> > > space for the project".
> > 
> > I don't think it is ... or should be.  This section is specifically
> > enumerating unacceptable behaviours.  The carve out "email address
> > not ordinarily collected by the project" means that adding
> > someone's email address in a tag isn't immediately sanctionable in
> > the code of conduct as unacceptable behaviour if a question about
> > whether you asked explicit permission arises.  Equally, a carve out
> > from unacceptable behaviours doesn't make the action always
> > acceptable, so it's not a licence to publish someone's email
> > address regardless of context.
> 
> The patch says "Publishing ... electronic address not ordinarily
> collected by the project, without explicit permission".  (I think it
> is fair to abstract here with "...".)  This phrase specifies which
> email addresses can be published.  It does not specify in what cases
> the email address can be published.  The desired goal is to be able
> to publish email addresses in patch and commit tags.

No, that's not my desired goal.   The section is not about giving
permission it's about making sure listed unacceptable behaviours don't
overlap what we normally do.  The goal is to exclude email the project
ordinarily collects from immediate sanction under the unacceptable
behaviours clause.  I deliberately didn't add anything about permission
because that's up to the project to define in its more standard
contribution documents.

> Which email addresses are allowed to be published?  (This is the
> point of my original comment.)  To me, the patch wording is
> describing how I can determine whether I can put a specific email
> address in a tag in a patch that I submit or commit.  I can put an
> email address in a tag _if_ it is "ordinarily collected by the
> project".
> 
> This then leads my mental process down the path of the disclosures
> (from all of the companies that I do business with) that tell me what
> they are going to do with my personal information, such as my
> address.  (They usually plan to share it with the world for their
> financial benefit.) In that context, my personal information is not
> _public_, but it is _ordinarily collected_ by the company.  I hope
> this provides some insight into what I am reading into "ordinarily
> collected by the project".
> 
> My original comment was trying to provide the concept behind a way to
> create an alternate wording in the patch to define "which email
> addresses".
> 
> Where are email addresses allowed to be published?  I do not
> understand the patch wording to address this at all.

I agree, but, as I said, my goal wasn't to provide explicit permission
(because the list is too long and too dependent on the way the project
operates) it was to carve out an exclusion from sanction for stuff the
kernel normally does.  The carve out doesn't translate into explicit
permission because the project can define other standards for the way
email addresses are added to the tags.

> Trying to understand how you are understanding my comment vs what I
> intended to communicate, it seems to me that you are focused on the
> "where allowed" and I am focused on the "which email addresses".
> 
> More clear?  Or am I still not communicating well enough?

I think the crux of the disagreement is that you think the carve out
equates to a permission which is not specific enough and I think it
doesn't equate to a permission at all, which is why there's no need to
make it more explicit.  Is that a fair characterisation?

James
