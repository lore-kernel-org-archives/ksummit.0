Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D28F7265
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 20:13:57 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B4079716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 20:13:56 +0000 (UTC)
Message-ID: <1540066434.3464.21.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Alan Cox <gnomes@lxorguk.ukuu.org.uk>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>
Date: Sat, 20 Oct 2018 13:13:54 -0700
In-Reply-To: <20181020192845.48b8b860@alans-desktop>
References: <20181020134908.GA32218@kroah.com>
	<20181020135118.GG32218@kroah.com>
	<20181020192845.48b8b860@alans-desktop>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Mishi Choudhary <mishi@linux.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH 6/7] Code of Conduct: Change the
 contact email address
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2018-10-20 at 19:28 +0100, Alan Cox wrote:
> > +to the circumstances. The Code of Conduct Committee is obligated
> > to
> > +maintain confidentiality with regard to the reporter of an
> > incident.
> > +Further details of specific enforcement policies may be posted
> > +separately.
> 
> Unfortunately by ignoring the other suggestions on this you've left
> this bit broken.
> 
> The committee can't keep most stuff confidential so it's misleading
> and wrong to imply they can. Data protection law, reporting laws in
> some countries and the like mean that anyone expecting an incident to
> remain confidential from the person it was reported against is living
> in dreamland and are going to get a nasty shock.
> 
> At the very least it should say '(except where required by law)'.

I've got a solution for this: the patches I've been curating also
modify the section so the merger will look like what I have below.

The intent of the series I'm curating was only the beginning to show
desire to change in 4.19 but to correct the obvious defect before we
started the debate, so after suitable discussion, this one can be
the final set.

> There is a separate issue that serious things should always go to law
> enforcement - you are setting up a policy akin to the one that got
> the catholic church and many others in trouble.
> 
> You should also reserving the right to report serious incidents
> directly to law enforcement. Unless of course you want to be forced
> to sit on multiple reports of physical abuse from different people
> about someone - unable to tell them about each others report, unable
> to prove anything, and in twenty years time having to explain to the
> media why nothing was done.

I think we should debate that.  Most legal systems provide significant
deference to victims wishing for confidentiality and we should both
respect that and remember that an automatic crime report is a
significant deterrent  to vulnerable people in a lot of places.

James

---

diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
index eec768471a4d..8913851dab89 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -59,19 +59,27 @@ address, posting via an official social media account, or acting as an appointed
 representative at an online or offline event. Representation of a project may be
 further defined and clarified by project maintainers.
 
-Reporting
-=========
+Enforcement
+===========
 
 Instances of abusive, harassing, or otherwise unacceptable behavior may be
-reported by contacting the Technical Advisory Board (TAB) at
-<tab@lists.linux-foundation.org>. All complaints will be reviewed and
-investigated and will result in a response that is deemed necessary and
-appropriate to the circumstances. The TAB is obligated to maintain
-confidentiality with regard to the reporter of an incident (except where
-required by law).
+reported by contacting the Code of Conduct Committee at
+<conduct@kernel.org>. All complaints will be reviewed and investigated
+and will result in a response that is deemed necessary and appropriate
+to the circumstances. The Code of Conduct Committee is obligated to
+maintain confidentiality with regard to the reporter of an incident
+(except where required by law). Further details of specific enforcement
+policies may be posted separately.
+
 
 Attribution
 ===========
 
 This Code of Conduct is adapted from the Contributor Covenant, version 1.4,
 available at https://www.contributor-covenant.org/version/1/4/code-of-conduct.html
+
+Interpretation
+==============
+
+See the :ref:`code_of_conduct_interpretation` document for how the Linux
+kernel community will be interpreting this document.
