Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D2D33D4C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 22:16:28 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E983775
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 22:16:27 +0000 (UTC)
Date: Wed, 10 Oct 2018 15:16:12 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Frank Rowand <frowand.list@gmail.com>
Message-ID: <20181010221611.GA5711@localhost>
References: <20181007085102.17795-1-geert@linux-m68k.org>
	<f4f7bf39-af34-4375-d6a2-b1f23cad519e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f4f7bf39-af34-4375-d6a2-b1f23cad519e@gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Oct 10, 2018 at 01:55:04PM -0700, Frank Rowand wrote:
> On 10/07/18 01:51, Geert Uytterhoeven wrote:
> > Providing an explicit list of discrimination factors may give the false
> > impression that discrimination based on other unlisted factors would be
> > allowed.
> > 
> > Avoid any ambiguity by removing the list, to ensure "a harassment-free
> > experience for everyone", period.
[...]
> > diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
> > index ab7c24b5478c6b30..e472c9f86ff00b34 100644
> > --- a/Documentation/process/code-of-conduct.rst
> > +++ b/Documentation/process/code-of-conduct.rst
> > @@ -6,10 +6,7 @@ Our Pledge
> >  
> >  In the interest of fostering an open and welcoming environment, we as
> >  contributors and maintainers pledge to making participation in our project and
> > -our community a harassment-free experience for everyone, regardless of age, body
> > -size, disability, ethnicity, sex characteristics, gender identity and
> > -expression, level of experience, education, socio-economic status, nationality,
> > -personal appearance, race, religion, or sexual identity and orientation.
> > +our community a harassment-free experience for everyone.
> >  
> >  Our Standards
> >  =============
> > 
> 
> 
> The words removed by this patch are a political statement.

Choosing not to say those words is a political statement.

See the original commit message for the code of conduct: "Explicit
guidelines have demonstrated success in other projects and other areas
of the kernel."

And see the FAQ entry at https://www.contributor-covenant.org/faq for
"The Contributor Covenant explicitly lists a set of protected classes;
does this make it acceptable to discriminate or make others feel
unwelcome based on other factors?" (I wrote that FAQ entry and submitted
it upstream, where it was enthusiastically merged.)
