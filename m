Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84371724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 16:19:49 +0000 (UTC)
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C908E217
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 16:19:48 +0000 (UTC)
Received: by mail-ua0-f171.google.com with SMTP id 35so91927281uap.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 09:19:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469979098.23563.300.camel@linux.vnet.ibm.com>
References: <20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469648220.23563.15.camel@linux.vnet.ibm.com>
	<CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
	<20160728165728.GR4541@io.lakedaemon.net>
	<1469830256.23563.200.camel@linux.vnet.ibm.com>
	<CALCETrUiYghc5uq9GHQRT--n15PBimhJwHA0TwgNqGxsbRKaFw@mail.gmail.com>
	<20160730163626.GP3296@wotan.suse.de>
	<1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 31 Jul 2016 09:19:28 -0700
Message-ID: <CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 31, 2016 at 8:31 AM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:
> On Sa, 2016-07-30 at 20:09 -0700, Andy Lutomirski wrote:
>> On Jul 30, 2016 8:08 PM, "Mimi Zohar" <zohar@linux.vnet.ibm.com> wrote:
>> >
>> > On Sa, 2016-07-30 at 18:36 +0200, Luis R. Rodriguez wrote:
>> > > On Fri, Jul 29, 2016 at 03:25:09PM -0700, Andy Lutomirski wrote:
>> > > > On Fri, Jul 29, 2016 at 3:10 PM, Mimi Zohar <zohar@linux.vnet.ibm.com>
>> wrote:
>> > > > > On Do, 2016-07-28 at 16:57 +0000, Jason Cooper wrote:
>> > > > >> Hi Andy,
>> > > > >>
>> > > > >> On Wed, Jul 27, 2016 at 01:09:37PM -0700, Andy Lutomirski wrote:
>> > > > >> ...
>> > > > >> > I would like someone to explain why using the keyring mechanism
>> for
>> > > > >> > this in the first place is a good idea.
>> > > > >> >
>> > > > >> > As far as I can tell, the design goals of "keys trusted by the
>> kernel
>> > > > >> > for modules, firmware, etc" are:
>> > > > >> >
>> > > > >> >  - Keys are added at build time or, according to potentially
>> > > > >> > system-specific rules, at boot time.
>> > > > >> >
>> > > > >> >  - Keys should specify what they're trusted *for*.
>> > > > >>
>> > > > >> Well, I'd argue that keys should specify what they are *intended*
>> for by
>> > > > >> the keyholder.  A useful security system could further restrict
>> the key
>> > > > >> as needed.
>> > > > >
>> > > > > We've already started.  Currently the kernel_read_file() and family
>> of
>> > > > > functions provide the LSM hooks needed for verifying file
>> signatures of
>> > > > > files read by the kernel.  The kernel_read_file_id enumeration is
>> used
>> > > > > to differentiate between callers.  Based on this enumeration, the
>> > > > > *intended* for could be defined.  It would make sense to extend the
>> IMA
>> > > > > policy language to support *intended* for.
>> > > > >
>> > > >
>> > > > Having kernel_read_file know the purpose is a big step in the right
>> > > > direction, although, as I think I and others have pointed out, just an
>> > > > enum is insufficient -- for firmware, at least, the *name* is
>> > > > relevant.
>> >
>> > > The name is passed for firmware, the wrapper
>> kernel_read_file_from_path()
>> > > is used. So if we wanted an LSM extension on name I think we can do that
>> > > on kernel_read_file_from_path() ?
>> >
>> > It shouldn't make a difference whether kernel_read_file() is called
>> > directly, or the kernel_read_file_by_path/fd() are called.  The pathname
>> > is accessible from the "file" argument.
>> >
>>l
>> What happens if a symlink is involved?
>
> For callers of kernel_read_file_by_path(), like firmware, we could pass
> the pathname, but for the other callers of kernel_read_file/_by_fd() we
> could use d_absolute_path().

That seems pointlessly fragile to me, and this issue has been known
for longer than the code in question has even existed.  How about:

struct kernel_trusted_file_description {
  enum kernel_read_file_id type;
  const char *specific_purpose;  /* may be NULL for KEXEC_IMAGE, etc. */
};

int kernel_read_file(struct file *, void **, loff_t *, const struct
trusted_file_description *);

rather than trying to guess.

Also, are there any plans to move module signature verification into
.kernel_post_read_file?

--Andy
