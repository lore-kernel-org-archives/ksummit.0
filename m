Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3EE542EC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 02:41:35 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BCD776E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 02:41:34 +0000 (UTC)
Message-ID: <1539744091.2805.108.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Frank Rowand <frowand.list@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 16 Oct 2018 19:41:31 -0700
In-Reply-To: <e332116b-62e8-9930-c263-d022edb5828e@gmail.com>
References: <1539701820.2805.6.camel@HansenPartnership.com>
	<1539701896.2805.7.camel@HansenPartnership.com>
	<e332116b-62e8-9930-c263-d022edb5828e@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Tue, 2018-10-16 at 19:10 -0700, Frank Rowand wrote:
> On 10/16/18 07:58, James Bottomley wrote:
> > The current code of conduct has an ambiguity in the it considers
> > publishing
> > private information such as email addresses unacceptable
> > behaviour.  Since
> > the Linux kernel collects and publishes email addresses as part of
> > the patch
> > process, add an exception clause for email addresses ordinarily
> > collected by
> > the project to correct this ambiguity.
> > 
> > Fixes: 8a104f8b5867c682 ("Code of Conduct: Let's revamp it.")
> > Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > Acked-by: Shuah Khan <shuah@kernel.org>
> > Acked-by: Guenter Roeck <linux@roeck-us.net>
> > Reviewed-by: Alan Cox <alan@llwyncelyn.cymru>
> > Reviewed-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> > Acked-by: "Eric W. Biederman" <ebiederm@xmission.com>
> > Acked-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.c
> > om>
> > ---
> >  Documentation/process/code-of-conduct.rst | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/process/code-of-conduct.rst
> > b/Documentation/process/code-of-conduct.rst
> > index ab7c24b5478c..aa40e34e7785 100644
> > --- a/Documentation/process/code-of-conduct.rst
> > +++ b/Documentation/process/code-of-conduct.rst
> > @@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants
> > include:
> >  * Trolling, insulting/derogatory comments, and personal or
> > political attacks
> >  * Public or private harassment
> >  * Publishing others’ private information, such as a physical or
> > electronic
> > -  address, without explicit permission
> > +  address not ordinarily collected by the project, without
> > explicit permission
> >  * Other conduct which could reasonably be considered inappropriate
> > in a
> >    professional setting
> >  
> > 
> 
> Repeating my comment on version 1:
> 
> My understanding of the concern behind this change is that we should
> be able to use an email address for the current development
> practices, such as Reported-by, Suggested-by, etc tags when the email
> address was provided in what is a public space for the project.  The
> public space is visible to anyone in the world who desires to access
> it.
> 
> I do not understand how "ordinarily collected by the project" is
> equivalent to "an email address that was provided in a public space
> for the project".

I don't think it is ... or should be.  This section is specifically
enumerating unacceptable behaviours.  The carve out "email address not
ordinarily collected by the project" means that adding someone's email
address in a tag isn't immediately sanctionable in the code of conduct
as unacceptable behaviour if a question about whether you asked
explicit permission arises.  Equally, a carve out from unacceptable
behaviours doesn't make the action always acceptable, so it's not a
licence to publish someone's email address regardless of context.

> Ordinarily collected could include activities that can be expected to
> be private and not visible to any arbitrary person in the world.

It's not a blanket permission, it's an exclusion from being considered
unacceptable behaviour.  I would be interested to know what information
we ordinarily collect in the course of building linux that should be
considered private because I might have missed something about the
implications here.

James

> My issue is with the word choice.  I agree with the underlying
> concept.
> 
> -Frank
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
