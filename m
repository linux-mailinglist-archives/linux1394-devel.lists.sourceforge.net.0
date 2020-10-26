Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4869629991E
	for <lists+linux1394-devel@lfdr.de>; Mon, 26 Oct 2020 22:52:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kXAPF-0007Dd-IQ; Mon, 26 Oct 2020 21:51:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@kernel.org>) id 1kXAPE-0007DR-Ju
 for linux1394-devel@lists.sourceforge.net; Mon, 26 Oct 2020 21:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ENxCu9bv/ZjjbqHQTBY3OYVkfluVJrjS0IRa6PIcBio=; b=GBSYtDuKm9ILQweCTqQ5xJWUzi
 +PhOExYRYWDBgj6+0v2btX2XZFFXm9/B+jd0K5Q5e0hnWUzQKfrskrZ8SEDlIW7S96/Fz2CYeATTS
 XBi6K+Y+wHpC6sl/T01nqy8wdpc9ozSMOdasvx/I7R2+LOs5qL63ytx3H+i11e8nht5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ENxCu9bv/ZjjbqHQTBY3OYVkfluVJrjS0IRa6PIcBio=; b=Q
 cy8ct8wP7pII2XidOIA8+OLBsykOBsrsCCO+mURHWZ8m5h39udo+OaHARRjlM8czSkY2AL7XVMioC
 D+5ozarK9zYge+4J8uL4gI3hXt71H5US3fDeYi2gho/ke9msQ0ytYmVG1/701HBiZvFU+FaeDQcPj
 +iLYnCY7nRmRnyHc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kXAP7-0086li-7b
 for linux1394-devel@lists.sourceforge.net; Mon, 26 Oct 2020 21:51:56 +0000
Received: from localhost.localdomain (unknown [192.30.34.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59C0C2084C;
 Mon, 26 Oct 2020 21:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603749103;
 bh=pdHcRLWzqUaa0qQ6CJaa/u0ZAnIZEXLVDHCAe2fOTqo=;
 h=From:To:Cc:Subject:Date:From;
 b=z1i7YGIwDkMWCtN7K+mf+Bnc0LXqi9uirQ+g6TbK9i9UyojDTa23e3TiDqxINPFjS
 5SEtXGWg2stWPC7yuoDGOzqJ/nJNXgQUUdsBgtpPvOF8ApEjItwKRYjlKjLIu/KYXk
 62y22tVeUA/bKzxF0Pc+OMfqkiAI0s5VVqZklglE=
From: Arnd Bergmann <arnd@kernel.org>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: fix function type cast warning
Date: Mon, 26 Oct 2020 22:51:27 +0100
Message-Id: <20201026215138.3893732-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kXAP7-0086li-7b
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux1394-devel@lists.sourceforge.net,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

RnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KCmdjYyAtV2V4dHJhIGNvbXBsYWlu
cyBhYm91dCBhIHN1c3BpY2lvdXMgY2FzdDoKCnJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYzo5
ODU6ODogd2FybmluZzogY2FzdCBiZXR3ZWVuIGluY29tcGF0aWJsZSBmdW5jdGlvbiB0eXBlcyBm
cm9tIOKAmHZvaWQgKCopKHN0cnVjdCBmd19pc29fY29udGV4dCAqLCBkbWFfYWRkcl90LCAgdm9p
ZCAqKeKAmSB7YWthIOKAmHZvaWQgKCopKHN0cnVjdCBmd19pc29fY29udGV4dCAqLCBsb25nIGxv
bmcgdW5zaWduZWQgaW50LCAgdm9pZCAqKeKAmX0gdG8g4oCYdm9pZCAoKikoc3RydWN0IGZ3X2lz
b19jb250ZXh0ICosIHUzMiwgIHNpemVfdCwgIHZvaWQgKiwgdm9pZCAqKeKAmSB7YWthIOKAmHZv
aWQgKCopKHN0cnVjdCBmd19pc29fY29udGV4dCAqLCB1bnNpZ25lZCBpbnQsICBsb25nIHVuc2ln
bmVkIGludCwgIHZvaWQgKiwgdm9pZCAqKeKAmX0gWy1XY2FzdC1mdW5jdGlvbi10eXBlXQoKVGhl
IGJlaGF2aW9yIGlzIGNvcnJlY3QgaW4gdGhlIGVuZCwgYnV0IHRoaXMgaXMgbW9yZSBjbGVhcmx5
CmV4cHJlc3NlZCB1c2luZyBhIHRyYW5zcGFyZW50IHVuaW9uLgoKRml4ZXM6IDg3MmUzMzBlMzg4
MCAoImZpcmV3aXJlOiBhZGQgaXNvY2hyb25vdXMgbXVsdGljaGFubmVsIHJlY2VwdGlvbiIpClNp
Z25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Ci0tLQogZHJpdmVycy9m
aXJld2lyZS9jb3JlLWNkZXYuYyB8ICA2ICsrKy0tLQogZHJpdmVycy9maXJld2lyZS9jb3JlLWlz
by5jICB8ICAyICstCiBpbmNsdWRlL2xpbnV4L2ZpcmV3aXJlLmggICAgIHwgMTcgKysrKysrKyst
LS0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYyBiL2RyaXZlcnMv
ZmlyZXdpcmUvY29yZS1jZGV2LmMKaW5kZXggZmI2YzY1MTIxNGYzLi44ZDg1ZDUyYjAyY2EgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZmlyZXdpcmUvY29yZS1jZGV2LmMKKysrIGIvZHJpdmVycy9maXJl
d2lyZS9jb3JlLWNkZXYuYwpAQCAtOTcwLDcgKzk3MCw3IEBAIHN0YXRpYyBpbnQgaW9jdGxfY3Jl
YXRlX2lzb19jb250ZXh0KHN0cnVjdCBjbGllbnQgKmNsaWVudCwgdW5pb24gaW9jdGxfYXJnICph
cmcpCiAJCWlmIChhLT5zcGVlZCA+IFNDT0RFXzMyMDAgfHwgYS0+Y2hhbm5lbCA+IDYzKQogCQkJ
cmV0dXJuIC1FSU5WQUw7CiAKLQkJY2IgPSBpc29fY2FsbGJhY2s7CisJCWNiLnNjID0gaXNvX2Nh
bGxiYWNrOwogCQlicmVhazsKIAogCWNhc2UgRldfSVNPX0NPTlRFWFRfUkVDRUlWRToKQEAgLTk3
OCwxMSArOTc4LDExIEBAIHN0YXRpYyBpbnQgaW9jdGxfY3JlYXRlX2lzb19jb250ZXh0KHN0cnVj
dCBjbGllbnQgKmNsaWVudCwgdW5pb24gaW9jdGxfYXJnICphcmcpCiAJCSAgICBhLT5jaGFubmVs
ID4gNjMpCiAJCQlyZXR1cm4gLUVJTlZBTDsKIAotCQljYiA9IGlzb19jYWxsYmFjazsKKwkJY2Iu
c2MgPSBpc29fY2FsbGJhY2s7CiAJCWJyZWFrOwogCiAJY2FzZSBGV19JU09fQ09OVEVYVF9SRUNF
SVZFX01VTFRJQ0hBTk5FTDoKLQkJY2IgPSAoZndfaXNvX2NhbGxiYWNrX3QpaXNvX21jX2NhbGxi
YWNrOworCQljYi5tYyA9IGlzb19tY19jYWxsYmFjazsKIAkJYnJlYWs7CiAKIAlkZWZhdWx0Ogpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9maXJld2lyZS9jb3JlLWlzby5jIGIvZHJpdmVycy9maXJld2ly
ZS9jb3JlLWlzby5jCmluZGV4IGFmNzBlNzRmOWE3ZS4uZGRhZGE2NDg3NzVhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtaXNvLmMKKysrIGIvZHJpdmVycy9maXJld2lyZS9jb3Jl
LWlzby5jCkBAIC0xNDUsNyArMTQ1LDcgQEAgc3RydWN0IGZ3X2lzb19jb250ZXh0ICpmd19pc29f
Y29udGV4dF9jcmVhdGUoc3RydWN0IGZ3X2NhcmQgKmNhcmQsCiAJY3R4LT5jaGFubmVsID0gY2hh
bm5lbDsKIAljdHgtPnNwZWVkID0gc3BlZWQ7CiAJY3R4LT5oZWFkZXJfc2l6ZSA9IGhlYWRlcl9z
aXplOwotCWN0eC0+Y2FsbGJhY2suc2MgPSBjYWxsYmFjazsKKwljdHgtPmNhbGxiYWNrID0gY2Fs
bGJhY2s7CiAJY3R4LT5jYWxsYmFja19kYXRhID0gY2FsbGJhY2tfZGF0YTsKIAogCXJldHVybiBj
dHg7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2ZpcmV3aXJlLmggYi9pbmNsdWRlL2xpbnV4
L2ZpcmV3aXJlLmgKaW5kZXggYWVjOGYzMGFiMjAwLi41OWI1ZTAyYTZkNDIgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvbGludXgvZmlyZXdpcmUuaAorKysgYi9pbmNsdWRlL2xpbnV4L2ZpcmV3aXJlLmgK
QEAgLTQzMSwxMSArNDMxLDEzIEBAIHZvaWQgZndfaXNvX2J1ZmZlcl9kZXN0cm95KHN0cnVjdCBm
d19pc29fYnVmZmVyICpidWZmZXIsIHN0cnVjdCBmd19jYXJkICpjYXJkKTsKIHNpemVfdCBmd19p
c29fYnVmZmVyX2xvb2t1cChzdHJ1Y3QgZndfaXNvX2J1ZmZlciAqYnVmZmVyLCBkbWFfYWRkcl90
IGNvbXBsZXRlZCk7CiAKIHN0cnVjdCBmd19pc29fY29udGV4dDsKLXR5cGVkZWYgdm9pZCAoKmZ3
X2lzb19jYWxsYmFja190KShzdHJ1Y3QgZndfaXNvX2NvbnRleHQgKmNvbnRleHQsCi0JCQkJICB1
MzIgY3ljbGUsIHNpemVfdCBoZWFkZXJfbGVuZ3RoLAotCQkJCSAgdm9pZCAqaGVhZGVyLCB2b2lk
ICpkYXRhKTsKLXR5cGVkZWYgdm9pZCAoKmZ3X2lzb19tY19jYWxsYmFja190KShzdHJ1Y3QgZndf
aXNvX2NvbnRleHQgKmNvbnRleHQsCi0JCQkJICAgICBkbWFfYWRkcl90IGNvbXBsZXRlZCwgdm9p
ZCAqZGF0YSk7Cit0eXBlZGVmIHVuaW9uIHsKKwl2b2lkICgqc2MpKHN0cnVjdCBmd19pc29fY29u
dGV4dCAqY29udGV4dCwgdTMyIGN5Y2xlLAorCQkgICBzaXplX3QgaGVhZGVyX2xlbmd0aCwgdm9p
ZCAqaGVhZGVyLCB2b2lkICpkYXRhKTsKKwl2b2lkICgqbWMpKHN0cnVjdCBmd19pc29fY29udGV4
dCAqY29udGV4dCwgZG1hX2FkZHJfdCBjb21wbGV0ZWQsCisJCSAgIHZvaWQgKmRhdGEpOworfSBf
X2F0dHJpYnV0ZV9fICgoX190cmFuc3BhcmVudF91bmlvbl9fKSkgZndfaXNvX2NhbGxiYWNrX3Q7
CisKIHN0cnVjdCBmd19pc29fY29udGV4dCB7CiAJc3RydWN0IGZ3X2NhcmQgKmNhcmQ7CiAJaW50
IHR5cGU7CkBAIC00NDMsMTAgKzQ0NSw3IEBAIHN0cnVjdCBmd19pc29fY29udGV4dCB7CiAJaW50
IHNwZWVkOwogCWJvb2wgZHJvcF9vdmVyZmxvd19oZWFkZXJzOwogCXNpemVfdCBoZWFkZXJfc2l6
ZTsKLQl1bmlvbiB7Ci0JCWZ3X2lzb19jYWxsYmFja190IHNjOwotCQlmd19pc29fbWNfY2FsbGJh
Y2tfdCBtYzsKLQl9IGNhbGxiYWNrOworCWZ3X2lzb19jYWxsYmFja190IGNhbGxiYWNrOwogCXZv
aWQgKmNhbGxiYWNrX2RhdGE7CiB9OwogCi0tIAoyLjI3LjAKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbWFpbGluZyBsaXN0IGxpbnV4MTM5NC1kZXZl
bEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vbGludXgxMzk0LWRldmVsCg==
