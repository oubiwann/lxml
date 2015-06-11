(defmacro defelem arg
  "This is a custom defelem macro based on the one in Examplar here:
     * https://github.com/lfex/exemplar/blob/master/include/macros.lfe
  The macro below differs in that is expects a prefix when defining the element
  and then when calling it -- something designeed to avoid namespace collisions
  with the general tag names common in XML documents. "
  (let* ((prefix-and-tag (atom_to_list (car arg)))
         (`(,prefix ,tag) (string:tokens prefix-and-tag "/")))
    `(progn
      (defun ,(list_to_atom (++ prefix "/" tag)) ()
        (lists:flatten (exemplar-xml:make-xml ,tag)))
      (defun ,(list_to_atom (++ prefix "/" tag)) (content)
        (lists:flatten (exemplar-xml:make-xml ,tag content)))
      (defun ,(list_to_atom (++ prefix "/" tag)) (attrs content)
        (lists:flatten (exemplar-xml:make-xml ,tag attrs content))))))

;; top-level XML tags
(defelem xml/account)
(defelem xml/adjustment)
(defelem xml/billing_info)
(defelem xml/invoice)
(defelem xml/transaction)
(defelem xml/plan)
(defelem xml/add_on)
(defelem xml/subscription)

;; child tags
(defelem xml/username)
(defelem xml/email)
(defelem xml/first_name)
(defelem xml/last_name)
(defelem xml/company_name)
(defelem xml/vat_number)
(defelem xml/tax_exempt)
(defelem xml/entity_use_code)
(defelem xml/address)
(defelem xml/accept_language)
(defelem xml/account_code)
(defelem xml/currency)
(defelem xml/unit_amount_in_cents)
(defelem xml/description)
(defelem xml/quantity)
(defelem xml/accounting_code)
(defelem xml/tax_code)
(defelem xml/token_id)
(defelem xml/address1)
(defelem xml/address2)
(defelem xml/city)
(defelem xml/state)
(defelem xml/country)
(defelem xml/zip)
(defelem xml/phone)
(defelem xml/ip_address)
(defelem xml/number)
(defelem xml/month)
(defelem xml/year)
(defelem xml/verification_value)
(defelem xml/terms_and_conditions)
(defelem xml/customer_notes)
(defelem xml/vat_reverse_charge_notes)
(defelem xml/collection_method)
(defelem xml/net_terms)
(defelem xml/po_number)
(defelem xml/line_items)
(defelem xml/uuid)
(defelem xml/prorate)
(defelem xml/amount_in_cents)
(defelem xml/payment_method)
(defelem xml/collected_at)
(defelem xml/plan_code)
(defelem xml/name)
(defelem xml/plan_interval_length)
(defelem xml/plan_interval_unit)
(defelem xml/trial_interval_length)
(defelem xml/trial_interval_unit)
(defelem xml/total_billing_cycles)
(defelem xml/unit_name)
(defelem xml/display_quantity)
(defelem xml/success_url)
(defelem xml/cancel_url)
(defelem xml/setup_fee_in_cents)
;; more currencies can be added here in the future
(defelem xml/USD)
(defelem xml/EUR)
(defelem xml/add_on_code)
(defelem xml/default_quantity)
(defelem xml/display_quantity_on_hosted_page)
(defelem xml/subscription_add_ons)
(defelem xml/coupon_code)
(defelem xml/trial_ends_at)
(defelem xml/starts_at)
(defelem xml/first_renewal_date)
(defelem xml/bulk)
(defelem xml/timeframe)
(defelem xml/applies_to_all_plans)
(defelem xml/hosted_description)
(defelem xml/invoice_description)
(defelem xml/redeem_by_date)
(defelem xml/single_use)
(defelem xml/applies_for_months)
(defelem xml/max_redemptions)
(defelem xml/plan_codes)
(defelem xml/discount_type)
(defelem xml/discount_in_cents)
(defelem xml/discount_percent)
