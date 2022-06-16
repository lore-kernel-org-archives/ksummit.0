From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date: Thu, 16 Jun 2022 14:14:30 +0200
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <20220616114856.GA11127@lst.de>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
 <87h74lvnyf.fsf@meer.lwn.net> <20220615174358.GA26358@lst.de>
 <CAO-hwJKqA07KX+6QtotCS8PtHFtk3DLQPJ3W8puaHOv7tOdi+Q@mail.gmail.com>
 <20220616114856.GA11127@lst.de>
Message-ID: <CAO-hwJKEOiAin_9Hq2tav2WQGV=17-EHoQ6qPYMZ5znLJUmYxA@mail.gmail.com>

On Thu, Jun 16, 2022 at 1:49 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Jun 15, 2022 at 08:34:19PM +0200, Benjamin Tissoires wrote:
> > Also, one of the things I'd like to have in kfuncs is to be able to
> > restrict them to a set of tracepoints, not just "all tracing
> > programs".
>
> Yes.
>
> > Because the thing I do not want is users hijacking the kfunc API I
> > define in other use cases I haven't thought of, and this would prevent
> > changes.
>
> Yes.  And I also think the BTF_IDs for kfuncs need to become something
> like EXPORT_SYMBOL_EPBF to be more explicit and greppable and need to
> see the same process.  That is in-tree users and no guarantee of stability
> for out of tree users.

Sounds interesting :)

>
> > And AFAICT, I consider everything eBPF I do in HID as ABI, and treat
> > it as such, and document it from day one.
>
> Yikes.  So you're adding a UDI-like stable driver ABI?
>

No, I mean I am carefully defining the eBPF api I am willing to export
to user space, and will restrain myself from shuffling arguments every
single release.

The last change in the HID core protocol was 20 years old, so we
roughly know what it does. It is not so much of a task to define what
will be unlikely to change.

Maybe a better way of putting it: "I consider *almost* everything eBPF
I do in HID as *UAPI*, and treat it as such, and document it from day
one."

Cheers,
Benjamin

