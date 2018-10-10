Return-Path: <acme@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CF021D08
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 21:16:02 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7E595D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 21:16:02 +0000 (UTC)
Date: Wed, 10 Oct 2018 18:15:47 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Frank Rowand <frowand.list@gmail.com>
Message-ID: <20181010211547.GB9853@kernel.org>
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

Em Wed, Oct 10, 2018 at 01:55:04PM -0700, Frank Rowand escreveu:
> On 10/07/18 01:51, Geert Uytterhoeven wrote:
> > Providing an explicit list of discrimination factors may give the false
> > impression that discrimination based on other unlisted factors would be
> > allowed.
> > 
> > Avoid any ambiguity by removing the list, to ensure "a harassment-free
> > experience for everyone", period.
> > 
> > Fixes: 8a104f8b5867c682 ("Code of Conduct: Let's revamp it.")
> > Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > ---
> > The use of "race" may also conflict with the United Nation's views on
> > this matter, cfr. e.g. the UNESCO's "Four statements on the race
> > question"[1][2] and "Declaration on Race and Racial Prejudice"[3].
> > 
> > [1] https://en.wikipedia.org/wiki/The_Race_Question
> > [2] http://unesdoc.unesco.org/images/0012/001229/122962eo.pdf
> > [3] http://portal.unesco.org/en/ev.php-URL_ID=13161&URL_DO=DO_TOPIC&URL_SECTION=201.html
> > ---
> >  Documentation/process/code-of-conduct.rst | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> > 
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
> The words removed by this patch are a political statement.  They do not belong
> in the document.
> 
> Acked-by: Frank Rowand <frowand.list@gmail.com>

Acked-by: Arnaldo Carvalho de Melo <acme@kernel.org>

- Arnaldo
