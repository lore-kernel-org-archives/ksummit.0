Return-Path: <ebiederm@xmission.com>
From: ebiederm@xmission.com (Eric W. Biederman)
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan>
Date: Wed, 14 Sep 2016 13:04:53 -0500
In-Reply-To: <4691924.fimvUkKjuv@vostro.rjw.lan> (Rafael J. Wysocki's message
	of "Wed, 14 Sep 2016 01:49:13 +0200")
Message-ID: <87vaxy73y2.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linux-foundation.org, Joe Perches <joe@perches.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
	trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

"Rafael J. Wysocki" <rjw@rjwysocki.net> writes:

> On Tuesday, September 13, 2016 02:03:22 PM Jonathan Corbet wrote:
>> On Tue, 13 Sep 2016 12:45:20 -0700
>> Josh Triplett <josh@joshtriplett.org> wrote:
>> 
>> > On Tue, Sep 13, 2016 at 08:58:49PM +0200, Christian Borntraeger wrote:
>> > > 3. CodingStyle seems to get changes which have no ACK or Reviewed-by that seem
>> > > to be controversial.  e.g.
>> > > https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/Documentation/CodingStyle?id=865a1caa4b6b886babdd9d67e7c3608be4567a51
>> > > suggested to indent labels with a space, and was then immediately followed by
>> > > patches. Is there a process in place to verify and challenge such changes?  
>> > 
>> > Ideally, that should come up during review of the CodingStyle patch.
>> > Changes shouldn't go into CodingStyle except to document existing
>> > process and unwritten rules, or to document the results of a discussion
>> > and consensus.  That particular change to CodingStyle should have been
>> > rejected, and should be reverted.
>> 
>> So I'm quite reluctant to take CodingStyle patches for just this reason;
>> *I* certainly don't want to be the one dictating style for the kernel, but
>> I'm not really sure who does.  In my time as the docs maintainer I've only
>> applied two patches there that constitute any sort of rule change - this
>> one and a78a136fa9337fdc25fdbaa2d253f9b4dc90ad44.  
>> 
>> In general, I would welcome advice on how any future rule-change patches
>> should be reviewed.
>
> I agree with Josh that CodingStyle should reflect the existing practice
> (present in the majority of the kernel source) or a broad consensus.
>
> While the "existing practice" case is relatively simple (it boils down to
> demonstrating that the given rule is in fact followed in practice in the
> majority of the kernel source), the "broad consensus" one is not as
> straightforward.  It looks like a Kernel Summit discussion or equivalent
> would be required each time to be honest ...
>
> In any case, it might be good to state somewhere that CodingStyle is a
> guidance for new code and not a prescription for how all of the kernel code
> must look like.

As I recall CodingStyle started life as a minimal codification of how
Linus wants the code, and initially he deliberately kept CodingStyle
quite minimal.

CodingStyle as a minimal least common denominator thing seems
reasonable.  CodingStyle that an experienced developer can't infer from
reading the kernel code seems like a bad idea.  Some people like to
read, some people like to cut & paste code.  Different people learn in
different ways.  Not to mention that different subsystems have their
idiosyncrasies.

For code that evolves slowly whitespace or coding ``style'' cleanups
that come up their own can be painful.  Occasionally there are good
reasons why a piece of code does not strictly conform to some rule.
Tables etc.  I have seen style patches mangle the readability of code.

Furthermore whitespace and coding sytle clean ups can be very painful if
you are doing a backports and a @#$%^&*! unnecessary cleanup breaks the
backport.

Certainly mandating things like having a one space indent on labels are
the kind of thing that are likely to cause people to see that CodeStyle
makes no sense and ignore it completely, rather than point new kernel
developers at it.

Eric
