Return-Path: <jwboyer@gmail.com>
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <20160913120942.GA18307@kroah.com>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>
	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>
	<20160913061931.GC11047@kroah.com>
	<20160913103814.GQ27946@sirena.org.uk>
	<20160913120942.GA18307@kroah.com>
From: Josh Boyer <jwboyer@fedoraproject.org>
Date: Tue, 13 Sep 2016 08:20:59 -0400
Message-ID: <CA+5PVA62NMb5dziRohcSPat5mU-yGzNrDuUFhTYr8Qip306VAg@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Cc: Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
	backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 13, 2016 at 8:09 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Sep 13, 2016 at 11:38:14AM +0100, Mark Brown wrote:
>> On Tue, Sep 13, 2016 at 08:19:31AM +0200, Greg KH wrote:
>> > what the next kernel will be.  I work with them to show that it doesn't
>> > really matter _what_ kernel is picked, if their code is merged upstream,
>> > or ready to be merged, the specific kernel number doesn't matter.
>>
>> In the cases I'm aware of it's more about knowing when the kernel will
>> appear so people can commit to integration activities than the version
>> number itself - I've never really heard "I need version X", it's always
>> been "when will we know which version Greg has chosen?".
>
> Yes, I hear that a lot, so you need to follow up with, "why does it
> matter what version Greg picks?", and then their response to me always
> is, "so we know what kernel to start to rebase our huge patchsets to
> earlier", which again, is the thing we want to keep them from doing!
>
> I got a few emails when I stopped 3.14.y this week along the lines of,
> "oops, we were using that kernel, what are we supposed to do now!"  Each
> time I asked if 4.4 or 4.8 worked for them.  And each time I got back a
> response a day later along the lines of, "oh wow, yes, it does, we'll
> use that."
>
> I have half-a-mind to just skip a LTS kernel for a whole year and see if
> anyone even notices, I feel it is being used for all the wrong
> reasons...

What are the right reasons?  I've always found the LTS kernels to be a
weird thing.  They don't serve the same purpose the normal stable
kernels do for users (fixes after initial release, before the next
release).  They don't serve the same purpose as a vendor kernel
(hardened, stable, tuned, supported).  Developers tend to abuse them
as you've descried.  So I guess I've forgotten the original intention
of the LTS kernels to begin with.  Could you remind me (us)?

josh
